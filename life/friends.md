<h1>友情链接</h1>

<style>
f-friend-list {
    list-style: none;
    padding: 0;
}

f-friend {
    display: flex;
    align-items: center;
    margin-bottom: 1em;
}

f-avatar, f-avatar > img {
    width: 5em;
    height: 5em;
    border-radius: 50%;
}

f-avatar {
    display: flex;
    justify-content: center;
    align-items: center;
    margin-right: 1em;
}

f-avatar:empty {
    background-color: #39c5bb;
}

f-avatar:empty::before {
    display: block;
    content: '?';
    font-size: 3.5em;
    text-align: center;
    color: #fff;
}

f-card {
    display: flex;
    height: 5em;
    flex-direction: column;
    justify-content: space-around;
}

f-card > p {
    margin: 0;
}
</style>

<f-friend-list>
    <f-friend>
        <f-avatar></f-avatar>
        <f-card>
            <a href="http://www.ijios.club:2233/" target="_blank">ijios</a>
            <p>我是一个一个一个一个什么啊（恼）</p>
        </f-card>
    </f-friend>
    <f-friend>
        <f-avatar>
            <img src="https://icemoe.moe/img/avatar.jpg" alt="lxh-avatar" />
        </f-avatar>
        <f-card>
            <a href="https://icemoe.moe/" target="_blank">冷筱华的无限殿堂</a>
            <p>一个笨蛋</p>
        </f-card>
    </f-friend>
    <f-friend>
        <f-avatar>
            <img src="https://lunasakura.top/lunasakura.png" alt="lunasakura-avatar" />
        </f-avatar>
        <f-card>
            <a href="https://lunasakura.top/" target="_blank">Luna Sakura</a>
            <p>Love is murderous utopia.</p>
        </f-card>
    </f-friend>
</f-friend-list>