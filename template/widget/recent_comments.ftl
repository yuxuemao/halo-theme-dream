<div class="card widget" id="comment">
    <div class="card-title">
        <i class="fa fa-commenting-o card-title-label"></i><span>最新评论</span>
    </div>
    <div class="card-content">
        <@commentTag method="latest" top="5">
            <#if comments.content?size gt 0>
                <ul class="widget-comment">
                    <#list comments.content as comment>
                        <li class="item">
                            <div class="user">
                                <img width="35" height="35" class="avatar lazyload" src="${comment.avatar!}"  alt="${comment.author!}">
                                <div class="info">
                                    <div class="author">${comment.author!}</div>
                                    <span class="date">${comment.createTime?string("yyyy-MM-dd")}</span>
                                </div>
                            </div>
                            <div class="reply">
                                <a class="link" href="${comment.post.fullPath!}#comment-wrapper">${comment.content!}</a>
                            </div>
                        </li>
                    </#list>
                </ul>
            <#else>
                <div><p>&emsp;&emsp;欢迎来访${blog_title!}，评论区暂空，等你抢C位。</p></div>
            </#if>
        </@commentTag>
<#--        <@commentTag method="latest" top="5">-->
<#--            <#if comments?? && comments.getTotalElements() gt 0>-->
<#--                 <#list comments.content as comment>-->
<#--                    <article class="media">-->
<#--                        <div class="media-content">-->
<#--                            <div class="content">-->
<#--                                <div><time class="has-text-grey is-size-7 is-uppercase" datetime="${comment.createTime!}">${comment.createTime?string('yyyy-MM-dd')}</time></div>-->
<#--                                ${comment.author!} : <a href="${comment.post.fullPath!}#comment-wrapper" class="title has-link-black-ter is-size-6 has-text-weight-normal">${comment.content!}</a>-->
<#--                            </div>-->
<#--                        </div>-->
<#--                    </article>-->
<#--                </#list>-->
<#--			<#else>-->
<#--			<div><p>&emsp;&emsp;欢迎来访${blog_title!}，评论区暂空，等你抢C位。</p></div>-->
<#--            </#if>-->
<#--        </@commentTag>-->
    </div>
</div>