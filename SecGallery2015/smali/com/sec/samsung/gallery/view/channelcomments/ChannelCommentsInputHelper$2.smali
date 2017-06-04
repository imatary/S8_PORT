.class Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper$2;
.super Ljava/lang/Object;
.source "ChannelCommentsInputHelper.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper$2;->this$0:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6

    const/4 v3, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper$2;->this$0:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;

    # getter for: Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;->mInputListener:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper$InputListener;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;->access$300(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;)Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper$InputListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper$InputListener;->getCount()I

    move-result v0

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper$2;->this$0:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;

    # getter for: Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;->mSendBtn:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;->access$400(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper$2;->this$0:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;

    # getter for: Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;->mSendBtn:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;->access$400(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper$2;->this$0:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;

    # getter for: Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;->mSendBtn:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;->access$400(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper$2;->this$0:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;

    # getter for: Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;->mSendBtn:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;->access$400(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;)Landroid/widget/TextView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper$2;->this$0:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;

    # getter for: Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;->mFakeMaxLength:I
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;->access$500(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;)I

    move-result v1

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper$2;->this$0:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;

    # getter for: Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;->mCommentEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;->access$200(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper$2;->this$0:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;

    # getter for: Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;->mDesiredMaxLength:I
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;->access$600(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;)I

    move-result v1

    invoke-interface {p1, v5, v1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper$2;->this$0:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;

    # getter for: Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;->mCommentEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;->access$200(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper$2;->this$0:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;

    # getter for: Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;->mDesiredMaxLength:I
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;->access$600(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper$2;->this$0:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;

    # getter for: Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;->mActivity:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;->access$100(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;)Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper$2;->this$0:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;

    # getter for: Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;->mActivity:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;->access$100(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;)Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0268

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper$2;->this$0:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;

    # getter for: Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;->mDesiredMaxLength:I
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;->access$600(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
