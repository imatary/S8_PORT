.class public Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;
.super Ljava/lang/Object;
.source "HelpPopup.java"

# interfaces
.implements Lcom/sec/android/mimage/photoretouching/lpe/core/Listeners$StateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupTaskForCollage;,
        Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupTask;,
        Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;
    }
.end annotation


# static fields
.field private static final BEFORE_VIEW_POPUP:I = 0x3

.field private static final COLLAGE_POPUP:I = 0x2

.field private static final LONG_PRESS_POPUP:I = 0x0

.field private static final RED_EYE_POPUP:I = 0x1


# instance fields
.field private mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

.field private mContextCollage:Landroid/content/Context;

.field private mHelpPopupDialog:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;

.field private mHelpPrefs:Landroid/content/SharedPreferences;

.field private mShowBeforeViewPopup:Z

.field private mShowCollagePopup:Z

.field private mShowLongPressPopup:Z

.field private mShowRedEyePopup:Z

.field private mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mHelpPopupDialog:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mContextCollage:Landroid/content/Context;

    const-string v0, "help"

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mHelpPrefs:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mHelpPrefs:Landroid/content/SharedPreferences;

    const-string v1, "showCollage"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mShowCollagePopup:Z

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mShowCollagePopup:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupTaskForCollage;

    invoke-direct {v0, p0, v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupTaskForCollage;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$1;)V

    new-array v1, v2, [Ljava/lang/Integer;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupTaskForCollage;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mHelpPopupDialog:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0, p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->addListener(Lcom/sec/android/mimage/photoretouching/lpe/core/Listeners$StateChangeListener;)V

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "help"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mHelpPrefs:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mHelpPrefs:Landroid/content/SharedPreferences;

    const-string v1, "showEye"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mShowRedEyePopup:Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mHelpPrefs:Landroid/content/SharedPreferences;

    const-string v1, "showLongPress"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mShowLongPressPopup:Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mHelpPrefs:Landroid/content/SharedPreferences;

    const-string v1, "beforeView"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mShowBeforeViewPopup:Z

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mShowBeforeViewPopup:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isGraceUX()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupTask;

    invoke-direct {v0, p0, v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupTask;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$1;)V

    new-array v1, v2, [Ljava/lang/Integer;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    return-void
.end method

.method static synthetic access$1002(Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mShowBeforeViewPopup:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->showPopup()V

    return-void
.end method

.method static synthetic access$1202(Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mShowCollagePopup:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->hidePopup()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mContextCollage:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;Landroid/widget/LinearLayout;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->setHelpPopupCloseBtnListener(Landroid/widget/LinearLayout;)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;)Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mHelpPopupDialog:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;)Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mHelpPopupDialog:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;

    return-object p1
.end method

.method static synthetic access$700(Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mHelpPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$802(Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mShowRedEyePopup:Z

    return p1
.end method

.method static synthetic access$902(Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mShowLongPressPopup:Z

    return p1
.end method

.method private hidePopup()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mHelpPopupDialog:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mHelpPopupDialog:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mHelpPopupDialog:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mHelpPopupDialog:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;

    :cond_0
    return-void
.end method

.method private setHelpPopupCloseBtnListener(Landroid/widget/LinearLayout;)V
    .locals 1

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$1;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$1;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showPopup()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mHelpPopupDialog:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mHelpPopupDialog:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mHelpPopupDialog:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mHelpPopupDialog:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->show()V

    :cond_1
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    return-void
.end method

.method public onConfigurationChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mHelpPopupDialog:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mHelpPopupDialog:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mHelpPopupDialog:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->dismiss()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mHelpPopupDialog:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->initView()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mHelpPopupDialog:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->initView2()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mContextCollage:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mContextCollage:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->hidePopup()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isMobileKeyboardAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->hidePopup()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mHelpPopupDialog:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->updateViews()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mHelpPopupDialog:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->show()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mHelpPopupDialog:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->show()V

    goto :goto_1
.end method

.method public onLanguageChanged()V
    .locals 7

    const v6, 0x7f0e026b

    const v5, 0x7f0702fa

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mHelpPopupDialog:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mHelpPopupDialog:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mHelpPopupDialog:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;

    iget v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->mPopupType:I

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mHelpPopupDialog:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;

    invoke-virtual {v3, v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mHelpPopupDialog:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;

    iget v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->mPopupType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mHelpPopupDialog:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;

    invoke-virtual {v3, v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mHelpPopupDialog:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;

    const v4, 0x7f0e026d

    invoke-virtual {v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_3

    const v3, 0x7f070253

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    :cond_3
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mHelpPopupDialog:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;

    const v4, 0x7f0e026f

    invoke-virtual {v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    const v3, 0x7f070197

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public onStateChange(II)V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mShowRedEyePopup:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x2001

    if-ne p2, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mShowLongPressPopup:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x800

    if-eq p2, v0, :cond_2

    const/16 v0, 0x1000

    if-eq p2, v0, :cond_2

    const/16 v0, 0x2000

    if-ne p2, v0, :cond_0

    :cond_2
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isGraceUX()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupTask;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public showHideShuffle(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mHelpPopupDialog:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mHelpPopupDialog:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->showShuffle(I)V

    :cond_0
    return-void
.end method

.method public updateCollageText()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mHelpPopupDialog:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mHelpPopupDialog:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->updateTextForCollage()V

    :cond_0
    return-void
.end method

.method public updateShuffle(II)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mHelpPopupDialog:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mHelpPopupDialog:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->updateLayouts(II)V

    :cond_0
    return-void
.end method
