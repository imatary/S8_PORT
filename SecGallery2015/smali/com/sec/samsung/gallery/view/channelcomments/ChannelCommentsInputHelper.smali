.class Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;
.super Ljava/lang/Object;
.source "ChannelCommentsInputHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper$InputListener;
    }
.end annotation


# static fields
.field private static final MAX_COMMENT_SIZE:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "CommentInputHelper"


# instance fields
.field private final mActivity:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;

.field private final mCommentEditText:Landroid/widget/EditText;

.field private mCommentObj:Lcom/sec/samsung/gallery/view/channelcomments/Comment;

.field private final mDesiredMaxLength:I

.field private final mFakeMaxLength:I

.field private final mInputListener:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper$InputListener;

.field private final mSendBtn:Landroid/widget/TextView;

.field private mShowKeyboard:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper$InputListener;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;->mCommentObj:Lcom/sec/samsung/gallery/view/channelcomments/Comment;

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;->mActivity:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;->mShowKeyboard:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;->mActivity:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;

    const v1, 0x7f12009d

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;->mCommentEditText:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;->mActivity:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;

    const v1, 0x7f12009e

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;->mSendBtn:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;->mActivity:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;->mFakeMaxLength:I

    iget v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;->mFakeMaxLength:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;->mDesiredMaxLength:I

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;->mInputListener:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper$InputListener;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;->mShowKeyboard:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;->mCommentEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;->mCommentEditText:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;->setListeners()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;->mShowKeyboard:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;->mShowKeyboard:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;)Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;->mActivity:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;->mCommentEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;)Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper$InputListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;->mInputListener:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper$InputListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;->mSendBtn:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;->mFakeMaxLength:I

    return v0
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;->mDesiredMaxLength:I

    return v0
.end method

.method private setListeners()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;->mCommentEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper$1;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper$1;-><init>(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;->mCommentEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper$2;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper$2;-><init>(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;->mSendBtn:Landroid/widget/TextView;

    new-instance v1, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper$3;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper$3;-><init>(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public editComment(Lcom/sec/samsung/gallery/view/channelcomments/Comment;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;->mCommentObj:Lcom/sec/samsung/gallery/view/channelcomments/Comment;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;->mCommentEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;->mCommentObj:Lcom/sec/samsung/gallery/view/channelcomments/Comment;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/channelcomments/Comment;->getCommentText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method sendComment(Ljava/lang/String;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;->mCommentObj:Lcom/sec/samsung/gallery/view/channelcomments/Comment;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;->mInputListener:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper$InputListener;

    invoke-interface {v1, p1}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper$InputListener;->onAddEnd(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;->mCommentEditText:Landroid/widget/EditText;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;->mCommentObj:Lcom/sec/samsung/gallery/view/channelcomments/Comment;

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;->mActivity:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->getSAScreenId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "3044"

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;->mActivity:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->setCheckCommentEditView(Z)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;->mCommentObj:Lcom/sec/samsung/gallery/view/channelcomments/Comment;

    invoke-virtual {v1, p1}, Lcom/sec/samsung/gallery/view/channelcomments/Comment;->setCommentText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;->mInputListener:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper$InputListener;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;->mCommentObj:Lcom/sec/samsung/gallery/view/channelcomments/Comment;

    invoke-interface {v1, v2}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper$InputListener;->onEditEnd(Lcom/sec/samsung/gallery/view/channelcomments/Comment;)Z

    move-result v0

    goto :goto_0
.end method
