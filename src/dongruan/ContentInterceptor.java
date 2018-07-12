package dongruan;



import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

import model.Comment;

public class ContentInterceptor extends AbstractInterceptor {

	private static final long serialVersionUID = -3413863603542609353L;

	public String intercept(ActionInvocation invocation) throws Exception {
        System.out.println("À¹½ØÆ÷³É¹¦");
        CommentAction action=(CommentAction) invocation.getAction();
        Comment comment=action.getComment();
        String content=comment.getContent();
        content=content.replaceAll("²Ý", "*");
        System.out.println(content);
        comment.setContent(content);
		return invocation.invoke();
	}
}
