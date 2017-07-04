.class Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper$1;
.super Ljava/lang/Object;
.source "ChannelCommentsInputHelper.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;->setListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper$1;->this$0:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 5

    const/4 v4, 0x0

    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper$1;->this$0:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;->access$000(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper$1;->this$0:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;->access$002(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper$1;->this$0:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;->access$100(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;)Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;

    move-result-object v2

    const-string/jumbo v3, "input_method"

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper$1;->this$0:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;->access$200(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v2, "CommentInputHelper"

    const-string/jumbo v3, "fail to show soft input"

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
