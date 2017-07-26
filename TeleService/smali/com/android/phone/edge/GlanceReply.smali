.class public Lcom/android/phone/edge/GlanceReply;
.super Landroid/app/Activity;
.source "GlanceReply.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/edge/GlanceReply$1;
    }
.end annotation


# static fields
.field public static DEFAULT_REPLY_MESSAGE:Ljava/lang/String;

.field private static MAX_LENGTH_EDIT_TEXT:I

.field private static MAX_LENGTH_EDIT_TEXT_COMMON:I

.field private static MAX_LENGTH_EDIT_TEXT_KOR:I

.field private static final TAG:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;


# instance fields
.field editText:Landroid/widget/EditText;

.field private handler:Landroid/os/Handler;

.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field isToastShowing:Z

.field private mClipVisible:Z

.field private mEdgeImg:Landroid/widget/ImageView;

.field peopleData:Lcom/android/phone/edge/GlanceRelplyPeopleData;

.field private prevString:Ljava/lang/String;

.field private tvTextCount:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Lcom/android/phone/edge/GlanceReply;->MAX_LENGTH_EDIT_TEXT:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/phone/edge/GlanceReply;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/edge/GlanceReply;->imm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/phone/edge/GlanceReply;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/edge/GlanceReply;->mClipVisible:Z

    return v0
.end method

.method static synthetic -get3()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/phone/edge/GlanceReply;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/phone/edge/GlanceReply;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/edge/GlanceReply;->changeEditTextState(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/phone/edge/GlanceReply;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/edge/GlanceReply;->changeTextCounterColor()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/phone/edge/GlanceReply;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/edge/GlanceReply;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "I can\'t answer your call now. I\'ll get back to you soon."

    sput-object v0, Lcom/android/phone/edge/GlanceReply;->DEFAULT_REPLY_MESSAGE:Ljava/lang/String;

    const/16 v0, 0x8c

    sput v0, Lcom/android/phone/edge/GlanceReply;->MAX_LENGTH_EDIT_TEXT_KOR:I

    const/16 v0, 0xa0

    sput v0, Lcom/android/phone/edge/GlanceReply;->MAX_LENGTH_EDIT_TEXT_COMMON:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/edge/GlanceReply;->mClipVisible:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/edge/GlanceReply;->isToastShowing:Z

    new-instance v0, Lcom/android/phone/edge/GlanceReply$1;

    invoke-direct {v0, p0}, Lcom/android/phone/edge/GlanceReply$1;-><init>(Lcom/android/phone/edge/GlanceReply;)V

    iput-object v0, p0, Lcom/android/phone/edge/GlanceReply;->handler:Landroid/os/Handler;

    return-void
.end method

.method private alertEmptyMessage()Z
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/phone/edge/GlanceReply;->editText:Landroid/widget/EditText;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/edge/GlanceReply;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/edge/GlanceReply;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, " "

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\n"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/phone/edge/GlanceReply;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0c42

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/edge/GlanceReply;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0c43

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/android/phone/edge/GlanceReply$4;

    invoke-direct {v1, p0}, Lcom/android/phone/edge/GlanceReply$4;-><init>(Lcom/android/phone/edge/GlanceReply;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/edge/GlanceReply;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0c3f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/phone/edge/GlanceReply$5;

    invoke-direct {v2, p0}, Lcom/android/phone/edge/GlanceReply$5;-><init>(Lcom/android/phone/edge/GlanceReply;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/edge/GlanceReply;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0c40

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/phone/edge/GlanceReply$6;

    invoke-direct {v2, p0}, Lcom/android/phone/edge/GlanceReply$6;-><init>(Lcom/android/phone/edge/GlanceReply;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 v1, 0x1

    return v1

    :cond_1
    return v4
.end method

.method private changeEditTextColor(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/edge/GlanceReply;->editText:Landroid/widget/EditText;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/phone/edge/GlanceReply;->editText:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/phone/edge/GlanceReply;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0096

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/edge/GlanceReply;->editText:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/phone/edge/GlanceReply;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a006f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_0
.end method

.method private changeEditTextState(Z)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/phone/edge/GlanceReply;->editText:Landroid/widget/EditText;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/edge/GlanceReply;->editText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/edge/GlanceReply;->editText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/phone/edge/GlanceReply;->editText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/phone/edge/GlanceReply;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/android/phone/edge/GlanceReply;->editText:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setCursorVisible(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/phone/edge/GlanceReply;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/edge/GlanceReply;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/edge/GlanceReply;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/phone/edge/GlanceReply;->editText:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    iget-object v0, p0, Lcom/android/phone/edge/GlanceReply;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/phone/edge/GlanceReply;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInputFromInputMethod(Landroid/os/IBinder;I)V

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/phone/edge/GlanceReply;->changeEditTextColor(Z)V

    invoke-direct {p0}, Lcom/android/phone/edge/GlanceReply;->changeTextCounterColor()V

    return-void
.end method

.method private changeTextCounterColor()V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/edge/GlanceReply;->tvTextCount:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/edge/GlanceReply;->editText:Landroid/widget/EditText;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/edge/GlanceReply;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/edge/GlanceReply;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/edge/GlanceReply;->tvTextCount:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/edge/GlanceReply;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a005a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/phone/edge/GlanceReply;->tvTextCount:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/edge/GlanceReply;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a005b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public static displayOnKeyguard(Landroid/content/Context;Landroid/view/Window;)V
    .locals 2

    const-string/jumbo v1, "keyguard"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x80000

    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    :cond_0
    return-void
.end method

.method private init()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    const-string/jumbo v4, "glance_reply_default_message"

    invoke-static {p0, v4, v5}, Lcom/android/phone/edge/GlanceReplyManager;->getDataFromPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-static {p0}, Lcom/android/phone/edge/GlanceReplyManager;->getReplyMessageFromDB(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    :cond_0
    const-string/jumbo v4, "glance_reply_msg_modified"

    invoke-static {p0, v4, v6}, Lcom/android/phone/edge/GlanceReplyManager;->getBooleanFromPreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    const v4, 0x7f100275

    invoke-virtual {p0, v4}, Lcom/android/phone/edge/GlanceReply;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/phone/edge/GlanceReply;->mEdgeImg:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/phone/edge/GlanceReply;->mEdgeImg:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string/jumbo v4, "hw_home_key"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/phone/edge/GlanceReply;->mEdgeImg:Landroid/widget/ImageView;

    const v5, 0x7f050006

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_0
    iget-object v4, p0, Lcom/android/phone/edge/GlanceReply;->mEdgeImg:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    sget-object v4, Lcom/android/phone/edge/GlanceReply;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isModified="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/phone/edge/GlanceReplyManager;->getGlanceReplyDefaultMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v2, :cond_5

    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_1
    sput-object v0, Lcom/android/phone/edge/GlanceReply;->DEFAULT_REPLY_MESSAGE:Ljava/lang/String;

    sget-object v4, Lcom/android/phone/edge/GlanceReply;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "use DID"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    new-instance v4, Lcom/android/phone/edge/GlanceRelplyPeopleData;

    invoke-static {p0}, Lcom/android/phone/edge/GlanceReplyManager;->getGlanceReplyInfoList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/phone/edge/GlanceRelplyPeopleData;-><init>(Ljava/util/ArrayList;)V

    iput-object v4, p0, Lcom/android/phone/edge/GlanceReply;->peopleData:Lcom/android/phone/edge/GlanceRelplyPeopleData;

    iget-object v4, p0, Lcom/android/phone/edge/GlanceReply;->peopleData:Lcom/android/phone/edge/GlanceRelplyPeopleData;

    sget-object v5, Lcom/android/phone/edge/GlanceReply;->DEFAULT_REPLY_MESSAGE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/phone/edge/GlanceRelplyPeopleData;->setDefaultItem(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/phone/edge/GlanceReply;->initMaxLengthForEditText()V

    const v4, 0x7f100277

    invoke-virtual {p0, v4}, Lcom/android/phone/edge/GlanceReply;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/phone/edge/GlanceReply;->editText:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/android/phone/edge/GlanceReply;->setDefaultText()V

    const v4, 0x7f100234

    invoke-virtual {p0, v4}, Lcom/android/phone/edge/GlanceReply;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/phone/edge/GlanceReply;->tvTextCount:Landroid/widget/TextView;

    const-string/jumbo v4, "input_method"

    invoke-virtual {p0, v4}, Lcom/android/phone/edge/GlanceReply;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    iput-object v4, p0, Lcom/android/phone/edge/GlanceReply;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, p0, Lcom/android/phone/edge/GlanceReply;->editText:Landroid/widget/EditText;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/phone/edge/GlanceReply;->editText:Landroid/widget/EditText;

    new-instance v5, Lcom/android/phone/edge/GlanceReply$3;

    invoke-direct {v5, p0}, Lcom/android/phone/edge/GlanceReply$3;-><init>(Lcom/android/phone/edge/GlanceReply;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v4, p0, Lcom/android/phone/edge/GlanceReply;->editText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/edge/GlanceReply;->prevString:Ljava/lang/String;

    :cond_2
    invoke-direct {p0}, Lcom/android/phone/edge/GlanceReply;->initActionBar()V

    invoke-virtual {p0}, Lcom/android/phone/edge/GlanceReply;->setFilter()V

    return-void

    :cond_3
    iget-object v4, p0, Lcom/android/phone/edge/GlanceReply;->mEdgeImg:Landroid/widget/ImageView;

    const v5, 0x7f050007

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    :cond_4
    sput-object v3, Lcom/android/phone/edge/GlanceReply;->DEFAULT_REPLY_MESSAGE:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/android/phone/edge/GlanceReplyManager;->setReplyMessageDB(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v4, Lcom/android/phone/edge/GlanceReply;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "upgraded OS "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    if-nez v3, :cond_6

    sget-object v4, Lcom/android/phone/edge/GlanceReply;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "pref saved msg. is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-object v0, Lcom/android/phone/edge/GlanceReply;->DEFAULT_REPLY_MESSAGE:Ljava/lang/String;

    goto :goto_1

    :cond_6
    sput-object v3, Lcom/android/phone/edge/GlanceReply;->DEFAULT_REPLY_MESSAGE:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method private initActionBar()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/phone/edge/GlanceReply;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    return-void
.end method

.method private initMaxLengthForEditText()V
    .locals 1

    sget v0, Lcom/android/phone/edge/GlanceReply;->MAX_LENGTH_EDIT_TEXT_COMMON:I

    sput v0, Lcom/android/phone/edge/GlanceReply;->MAX_LENGTH_EDIT_TEXT:I

    const-string/jumbo v0, "display_reject_message_limit_for_kor"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/phone/edge/GlanceReply;->MAX_LENGTH_EDIT_TEXT_KOR:I

    sput v0, Lcom/android/phone/edge/GlanceReply;->MAX_LENGTH_EDIT_TEXT:I

    :cond_0
    return-void
.end method

.method private setDefaultText()V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/edge/GlanceReply;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/edge/GlanceReply;->editText:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/edge/GlanceReply;->peopleData:Lcom/android/phone/edge/GlanceRelplyPeopleData;

    invoke-virtual {v2}, Lcom/android/phone/edge/GlanceRelplyPeopleData;->getDefaultItem()Lcom/android/phone/edge/GlanceReplyInfoItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/edge/GlanceReplyInfoItem;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 13

    const/4 v12, 0x2

    const-wide/16 v10, 0x7d0

    const v9, 0x7f0d05b7

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string/jumbo v5, "display_reject_message_limit_for_kor"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    sget v5, Lcom/android/phone/edge/GlanceReply;->MAX_LENGTH_EDIT_TEXT:I

    invoke-virtual {p0, v3}, Lcom/android/phone/edge/GlanceReply;->getStringByteSize(Ljava/lang/String;)I

    move-result v6

    if-ge v5, v6, :cond_1

    invoke-virtual {p0, v9}, Lcom/android/phone/edge/GlanceReply;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/android/phone/edge/GlanceReply;->editText:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/phone/edge/GlanceReply;->prevString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/phone/edge/GlanceReply;->editText:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/phone/edge/GlanceReply;->prevString:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setSelection(I)V

    iget-boolean v5, p0, Lcom/android/phone/edge/GlanceReply;->isToastShowing:Z

    if-eqz v5, :cond_0

    iput-boolean v8, p0, Lcom/android/phone/edge/GlanceReply;->isToastShowing:Z

    invoke-virtual {p0}, Lcom/android/phone/edge/GlanceReply;->showToast()V

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcom/android/phone/edge/GlanceReply$8;

    invoke-direct {v5, p0}, Lcom/android/phone/edge/GlanceReply$8;-><init>(Lcom/android/phone/edge/GlanceReply;)V

    invoke-virtual {v4, v5, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object v3, p0, Lcom/android/phone/edge/GlanceReply;->prevString:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string/jumbo v5, "dcm_reject_call_msg_limit"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v8}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/String;Z)[I

    move-result-object v1

    filled-new-array {v8, v8, v8, v8}, [I

    move-result-object v2

    const/4 v0, 0x0

    const/4 v5, 0x3

    aget v5, v1, v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_4

    invoke-static {v3, v8, v7}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)[I

    move-result-object v2

    aget v5, v2, v12

    aget v6, v2, v7

    add-int/2addr v5, v6

    const/16 v6, 0x46

    if-ge v6, v5, :cond_3

    sget-object v5, Lcom/android/phone/edge/GlanceReply;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "SmsMessage Full Size = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v9}, Lcom/android/phone/edge/GlanceReply;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/android/phone/edge/GlanceReply;->editText:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/phone/edge/GlanceReply;->prevString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/phone/edge/GlanceReply;->editText:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/phone/edge/GlanceReply;->prevString:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setSelection(I)V

    iget-boolean v5, p0, Lcom/android/phone/edge/GlanceReply;->isToastShowing:Z

    if-eqz v5, :cond_0

    iput-boolean v8, p0, Lcom/android/phone/edge/GlanceReply;->isToastShowing:Z

    invoke-virtual {p0}, Lcom/android/phone/edge/GlanceReply;->showToast()V

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcom/android/phone/edge/GlanceReply$9;

    invoke-direct {v5, p0}, Lcom/android/phone/edge/GlanceReply$9;-><init>(Lcom/android/phone/edge/GlanceReply;)V

    invoke-virtual {v4, v5, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    iput-object v3, p0, Lcom/android/phone/edge/GlanceReply;->prevString:Ljava/lang/String;

    goto :goto_0

    :cond_4
    invoke-static {v3, v8}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/String;Z)[I

    move-result-object v2

    aget v5, v2, v12

    aget v6, v2, v7

    add-int/2addr v5, v6

    const/16 v6, 0xa0

    if-ge v6, v5, :cond_5

    sget-object v5, Lcom/android/phone/edge/GlanceReply;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "SmsMessage Half Size = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v9}, Lcom/android/phone/edge/GlanceReply;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/android/phone/edge/GlanceReply;->editText:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/phone/edge/GlanceReply;->prevString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/phone/edge/GlanceReply;->editText:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/phone/edge/GlanceReply;->prevString:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setSelection(I)V

    iget-boolean v5, p0, Lcom/android/phone/edge/GlanceReply;->isToastShowing:Z

    if-eqz v5, :cond_0

    iput-boolean v8, p0, Lcom/android/phone/edge/GlanceReply;->isToastShowing:Z

    invoke-virtual {p0}, Lcom/android/phone/edge/GlanceReply;->showToast()V

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcom/android/phone/edge/GlanceReply$10;

    invoke-direct {v5, p0}, Lcom/android/phone/edge/GlanceReply$10;-><init>(Lcom/android/phone/edge/GlanceReply;)V

    invoke-virtual {v4, v5, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_5
    iput-object v3, p0, Lcom/android/phone/edge/GlanceReply;->prevString:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public changeDefaultMessage()V
    .locals 7

    const/4 v6, 0x0

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/phone/edge/GlanceReply;->editText:Landroid/widget/EditText;

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/phone/edge/GlanceReply;->editText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/edge/GlanceReply;->editText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, " "

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "\n"

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    invoke-static {p0}, Lcom/android/phone/edge/GlanceReplyManager;->getGlanceReplyDefaultMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {p0}, Lcom/android/phone/edge/GlanceReplyManager;->getGlanceReplyDefaultMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    if-eqz v1, :cond_4

    iget-object v3, p0, Lcom/android/phone/edge/GlanceReply;->peopleData:Lcom/android/phone/edge/GlanceRelplyPeopleData;

    invoke-virtual {v3}, Lcom/android/phone/edge/GlanceRelplyPeopleData;->getDefaultItem()Lcom/android/phone/edge/GlanceReplyInfoItem;

    move-result-object v3

    invoke-virtual {v3, p0, v2}, Lcom/android/phone/edge/GlanceReplyInfoItem;->setDefaultMessageforDB(Landroid/content/Context;Ljava/lang/String;)V

    const v3, 0x7f0d026a

    invoke-virtual {p0, v3}, Lcom/android/phone/edge/GlanceReply;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0d02a5

    invoke-virtual {p0, v4}, Lcom/android/phone/edge/GlanceReply;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/edge/GlanceReply;->editText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/android/phone/edge/GlanceReply;->peopleData:Lcom/android/phone/edge/GlanceRelplyPeopleData;

    invoke-virtual {v3}, Lcom/android/phone/edge/GlanceRelplyPeopleData;->getDefaultItem()Lcom/android/phone/edge/GlanceReplyInfoItem;

    move-result-object v3

    invoke-virtual {v3, p0, v6}, Lcom/android/phone/edge/GlanceReplyInfoItem;->setDefaultMessageforDB(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public finish()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public getStringByteSize(Ljava/lang/String;)I
    .locals 10

    const/16 v9, 0x7f

    const/4 v8, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    return v8

    :cond_0
    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/phone/edge/GlanceReply;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "phone"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x5

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {v4, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "45006"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-le v6, v9, :cond_1

    add-int/lit8 v1, v1, 0x2

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v3, v1

    :cond_3
    :goto_2
    return v3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v2, :cond_5

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-le v6, v9, :cond_6

    :cond_5
    if-ne v0, v2, :cond_7

    move v3, v1

    goto :goto_2

    :cond_6
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm(C)I

    move-result v6

    const/16 v7, 0x1b

    if-eq v7, v6, :cond_5

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    mul-int/lit8 v3, v6, 0x2

    goto :goto_2
.end method

.method public onBackPressed()V
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/edge/GlanceReply;->alertEmptyMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/edge/GlanceReply;->changeDefaultMessage()V

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0400e2

    invoke-virtual {p0, v0}, Lcom/android/phone/edge/GlanceReply;->setContentView(I)V

    sput-object p0, Lcom/android/phone/edge/GlanceReply;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/phone/edge/GlanceReply;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/phone/edge/GlanceReply;->displayOnKeyguard(Landroid/content/Context;Landroid/view/Window;)V

    invoke-direct {p0}, Lcom/android/phone/edge/GlanceReply;->init()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/edge/GlanceReply;->onBackPressed()V

    const/4 v1, 0x1

    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method

.method public onPause()V
    .locals 3

    sget-object v1, Lcom/android/phone/edge/GlanceReply;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "semclipboard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/content/clipboard/SemClipboardManager;

    invoke-virtual {v0}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/edge/GlanceReply;->mClipVisible:Z

    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/edge/GlanceReply;->mClipVisible:Z

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/android/phone/edge/GlanceReply;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/edge/GlanceReply;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/edge/GlanceReply;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/edge/GlanceReply;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/edge/GlanceReply$2;

    invoke-direct {v1, p0}, Lcom/android/phone/edge/GlanceReply$2;-><init>(Lcom/android/phone/edge/GlanceReply;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/edge/GlanceReply;->editText:Landroid/widget/EditText;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/edge/GlanceReply;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/edge/GlanceReply;->updateTextCounter(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setFilter()V
    .locals 3

    const/4 v1, 0x1

    new-array v0, v1, [Landroid/text/InputFilter;

    new-instance v1, Lcom/android/phone/edge/GlanceReply$7;

    sget v2, Lcom/android/phone/edge/GlanceReply;->MAX_LENGTH_EDIT_TEXT:I

    invoke-direct {v1, p0, v2}, Lcom/android/phone/edge/GlanceReply$7;-><init>(Lcom/android/phone/edge/GlanceReply;I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/phone/edge/GlanceReply;->editText:Landroid/widget/EditText;

    if-eqz v1, :cond_1

    const-string/jumbo v1, "display_reject_message_limit_for_kor"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/edge/GlanceReply;->editText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    :cond_0
    iget-object v1, p0, Lcom/android/phone/edge/GlanceReply;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/edge/GlanceReply;->updateTextCounter(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/phone/edge/GlanceReply;->editText:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_1
    return-void
.end method

.method public showToast()V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    sget v3, Lcom/android/phone/edge/GlanceReply;->MAX_LENGTH_EDIT_TEXT:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x7f0d0c41

    invoke-virtual {p0, v3, v2}, Lcom/android/phone/edge/GlanceReply;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public updateTextCounter(Ljava/lang/CharSequence;)V
    .locals 9

    const/4 v6, 0x3

    const/4 v8, 0x1

    const/4 v5, 0x2

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/phone/edge/GlanceReply;->editText:Landroid/widget/EditText;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/edge/GlanceReply;->tvTextCount:Landroid/widget/TextView;

    if-nez v4, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v3, 0x0

    const-string/jumbo v4, "display_reject_message_limit_for_kor"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/phone/edge/GlanceReply;->editText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/phone/edge/GlanceReply;->getStringByteSize(Ljava/lang/String;)I

    move-result v3

    :goto_0
    const-string/jumbo v4, "%d/%d"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    sget v6, Lcom/android/phone/edge/GlanceReply;->MAX_LENGTH_EDIT_TEXT:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/phone/edge/GlanceReply;->tvTextCount:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    const-string/jumbo v4, "dcm_reject_call_msg_limit"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v7}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/String;Z)[I

    move-result-object v0

    filled-new-array {v7, v7, v7, v7}, [I

    move-result-object v1

    aget v4, v0, v6

    if-ne v4, v6, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v7, v8}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)[I

    move-result-object v1

    const/16 v4, 0x46

    sput v4, Lcom/android/phone/edge/GlanceReply;->MAX_LENGTH_EDIT_TEXT:I

    aget v4, v1, v5

    rsub-int/lit8 v3, v4, 0x46

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v7}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/String;Z)[I

    move-result-object v1

    const/16 v4, 0xa0

    sput v4, Lcom/android/phone/edge/GlanceReply;->MAX_LENGTH_EDIT_TEXT:I

    aget v4, v1, v5

    rsub-int v3, v4, 0xa0

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/android/phone/edge/GlanceReply;->editText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v3

    goto :goto_0
.end method
