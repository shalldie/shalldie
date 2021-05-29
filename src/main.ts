import path from 'path';
import fs from 'fs';
import got from 'got';
import tpl from 'mini-tpl';

const HOST_URL = 'https://nosaid.com';
const MD_TEMPLATE = fs.readFileSync(path.join(__dirname, '../README.tpl'), 'utf-8');
const BLOG_LIST_URL = `${HOST_URL}/api/article/list`;

interface IArticle {
    name: string;
    title: string;
    cover: string;
    publishTime: number;
    labels: string[];
}

interface ITplData {
    url: {
        index: string;
        about: string;
        message: string;
        article: string;
    };
    labels: {
        name: string;
        url: string;
    }[];
    list: {
        title: string; // 标题
        url: string; // 地址
        publishTime: string; // 发布时间
    }[];
}

function dateFormat(date: Date, format: string) {
    const dict: Record<string, number> = {
        'y+': date.getFullYear(),
        'M+': date.getMonth() + 1,
        'd+': date.getDate(),
        'H+': date.getHours(),
        'h+': date.getHours() - 12,
        'm+': date.getMinutes(),
        's+': date.getSeconds()
    };
    for (const k in dict) {
        const reg = new RegExp(k, 'g');
        format = format.replace(reg, function (g0) {
            return ('000000' + dict[k]).slice(-g0.length);
        });
    }
    return format;
}

async function main() {
    const { body: list } = await got.post<IArticle[]>(BLOG_LIST_URL, {
        json: {
            page: 1,
            pageSize: 5
        },
        responseType: 'json'
    });

    const tplData: ITplData = {
        // host: HOST_URL,
        url: {
            index: HOST_URL,
            about: `${HOST_URL}/about`,
            article: `${HOST_URL}/article`,
            message: `${HOST_URL}/message`
        },
        labels: list
            .map(n => n.labels)
            .reduce((pre, next) => [...new Set([...pre, ...next])], [])
            .slice(0, 5)
            .map(lbl => ({
                name: lbl,
                url: `${HOST_URL}/article?label=${encodeURIComponent(lbl)}`
            })),
        list: list.map(item => {
            return {
                title: item.title,
                url: `${HOST_URL}/article/${item.name}`,
                publishTime: dateFormat(new Date(item.publishTime), 'yyyy-MM-dd')
            };
        })
    };

    const readme = tpl(MD_TEMPLATE, tplData);
    fs.writeFileSync(path.join(__dirname, '../README.md'), readme, 'utf-8');
}

(async () => {
    try {
        await main();
    } catch (ex) {
        console.log(ex);
    }
})();
