.class public Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;
.super Ljava/lang/Object;
.source "KeyLockModule.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private isKeyLockWndAdded:Z

.field private mController:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsShowKeyLockStatus:Z

.field private volatile mKeyLockPressCnt:I

.field private mKeyLockWindow:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

.field private mService:Landroid/app/Service;

.field private mThemeContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->mIsShowKeyLockStatus:Z

    iput v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->mKeyLockPressCnt:I

    iput-boolean v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->isKeyLockWndAdded:Z

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->mController:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    invoke-virtual {p1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->getService()Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->mService:Landroid/app/Service;

    iget-object v0, p1, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mThemeContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->mThemeContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->mThemeContext:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$108(Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;)I
    .locals 2

    iget v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->mKeyLockPressCnt:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->mKeyLockPressCnt:I

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->mIsShowKeyLockStatus:Z

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->showBackPressed()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->showRecentPressed()V

    return-void
.end method

.method private showBackPressed()V
    .locals 14

    const-wide/16 v12, 0x1

    const/4 v11, 0x1

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/16 v8, 0x8

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->mKeyLockWindow:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    if-nez v5, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->mThemeContext:Landroid/content/Context;

    const-string/jumbo v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v3

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "showBackPressed Rotation : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->mController:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    invoke-virtual {v5}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->getOrientation()I

    move-result v5

    if-ne v5, v11, :cond_1

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->mKeyLockWindow:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    sget v6, Lcom/samsung/android/game/gametools/floatingui/R$id;->rl_keylock_port:I

    invoke-virtual {v5, v6}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->mKeyLockWindow:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    sget v6, Lcom/samsung/android/game/gametools/floatingui/R$id;->rl_keylock_land:I

    invoke-virtual {v5, v6}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->mKeyLockWindow:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    sget v6, Lcom/samsung/android/game/gametools/floatingui/R$id;->rl_keylock_land_left:I

    invoke-virtual {v5, v6}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    sget v5, Lcom/samsung/android/game/gametools/floatingui/R$id;->iv_lock:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule$4;

    invoke-direct {v6, p0, v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule$4;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;Landroid/view/View;)V

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    :cond_1
    if-ne v3, v11, :cond_2

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->mKeyLockWindow:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    sget v6, Lcom/samsung/android/game/gametools/floatingui/R$id;->rl_keylock_land:I

    invoke-virtual {v5, v6}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->mKeyLockWindow:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    sget v6, Lcom/samsung/android/game/gametools/floatingui/R$id;->rl_keylock_port:I

    invoke-virtual {v5, v6}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->mKeyLockWindow:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    sget v6, Lcom/samsung/android/game/gametools/floatingui/R$id;->rl_keylock_land_left:I

    invoke-virtual {v5, v6}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    sget v5, Lcom/samsung/android/game/gametools/floatingui/R$id;->iv_lock:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule$5;

    invoke-direct {v6, p0, v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule$5;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;Landroid/view/View;)V

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_0

    :cond_2
    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->mKeyLockWindow:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    sget v6, Lcom/samsung/android/game/gametools/floatingui/R$id;->rl_keylock_land_left:I

    invoke-virtual {v5, v6}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->mKeyLockWindow:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    sget v6, Lcom/samsung/android/game/gametools/floatingui/R$id;->rl_keylock_port:I

    invoke-virtual {v5, v6}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->mKeyLockWindow:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    sget v6, Lcom/samsung/android/game/gametools/floatingui/R$id;->rl_keylock_land:I

    invoke-virtual {v5, v6}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private showRecentPressed()V
    .locals 14

    const-wide/16 v12, 0x1

    const/4 v11, 0x1

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/16 v8, 0x8

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->mKeyLockWindow:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    if-nez v5, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->mThemeContext:Landroid/content/Context;

    const-string/jumbo v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v3

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "showRecentPressed Rotation : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->mController:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    invoke-virtual {v5}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->getOrientation()I

    move-result v5

    if-ne v5, v11, :cond_1

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->mKeyLockWindow:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    sget v6, Lcom/samsung/android/game/gametools/floatingui/R$id;->rl_keylock_port:I

    invoke-virtual {v5, v6}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->mKeyLockWindow:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    sget v6, Lcom/samsung/android/game/gametools/floatingui/R$id;->rl_keylock_land:I

    invoke-virtual {v5, v6}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->mKeyLockWindow:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    sget v6, Lcom/samsung/android/game/gametools/floatingui/R$id;->rl_keylock_land_left:I

    invoke-virtual {v5, v6}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    sget v5, Lcom/samsung/android/game/gametools/floatingui/R$id;->iv_lock:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule$2;

    invoke-direct {v6, p0, v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule$2;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;Landroid/view/View;)V

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    :cond_1
    if-ne v3, v11, :cond_2

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->mKeyLockWindow:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    sget v6, Lcom/samsung/android/game/gametools/floatingui/R$id;->rl_keylock_land:I

    invoke-virtual {v5, v6}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->mKeyLockWindow:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    sget v6, Lcom/samsung/android/game/gametools/floatingui/R$id;->rl_keylock_port:I

    invoke-virtual {v5, v6}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->mKeyLockWindow:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    sget v6, Lcom/samsung/android/game/gametools/floatingui/R$id;->rl_keylock_land_left:I

    invoke-virtual {v5, v6}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    sget v5, Lcom/samsung/android/game/gametools/floatingui/R$id;->iv_lock:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule$3;

    invoke-direct {v6, p0, v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule$3;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;Landroid/view/View;)V

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_0

    :cond_2
    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->mKeyLockWindow:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    sget v6, Lcom/samsung/android/game/gametools/floatingui/R$id;->rl_keylock_land_left:I

    invoke-virtual {v5, v6}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->mKeyLockWindow:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    sget v6, Lcom/samsung/android/game/gametools/floatingui/R$id;->rl_keylock_port:I

    invoke-virtual {v5, v6}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->mKeyLockWindow:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    sget v6, Lcom/samsung/android/game/gametools/floatingui/R$id;->rl_keylock_land:I

    invoke-virtual {v5, v6}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public createKeyLockWnd()V
    .locals 12

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->isKeyLockWndAdded()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "createKeyLockWnd"

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->mThemeContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/game/gamecast/common/model/SettingData;->getKeyLockSettings(Landroid/content/Context;)I

    move-result v6

    if-nez v6, :cond_2

    const/high16 v11, 0x10000000

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "KeyLockSetting is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;)V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x7d6

    or-int/lit16 v4, v11, 0x628

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/high16 v1, 0x30000

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    invoke-static {}, Lcom/sec/game/gamecast/common/utility/KeyAllowUtil;->getWindowTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->mThemeContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->mKeyLockWindow:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/samsung/android/game/gametools/floatingui/R$layout;->layout_keylock_land:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/samsung/android/game/gametools/floatingui/R$layout;->layout_keylock_land_left:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/samsung/android/game/gametools/floatingui/R$layout;->layout_keylock_port:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v7, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/16 v1, 0x8

    invoke-virtual {v8, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/16 v1, 0x8

    invoke-virtual {v9, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-direct {v10, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v7, v1, v2}, Landroid/widget/RelativeLayout;->setLayerType(ILandroid/graphics/Paint;)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v8, v1, v2}, Landroid/widget/RelativeLayout;->setLayerType(ILandroid/graphics/Paint;)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v9, v1, v2}, Landroid/widget/RelativeLayout;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->mKeyLockWindow:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    invoke-virtual {v1, v7, v10}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->mKeyLockWindow:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    invoke-virtual {v1, v8, v10}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->mKeyLockWindow:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    invoke-virtual {v1, v9, v10}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->mThemeContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->mKeyLockWindow:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    const-string/jumbo v3, "Key Lock Window"

    invoke-virtual {v1, v2, v0, v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eq v6, v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->mService:Landroid/app/Service;

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/utility/KeyAllowUtil;->setRecentKeyAllow(ZLandroid/app/Service;)V

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->setKeyLockWndAdded(Z)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->mKeyLockWindow:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    new-instance v2, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule$1;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->setDispatchKeyListener(Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout$DispatchKeyListener;)V

    :cond_1
    return-void

    :cond_2
    const/4 v11, 0x0

    goto/16 :goto_0
.end method

.method public declared-synchronized getKeyLockPressCnt()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->mKeyLockPressCnt:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getKeyLockWindow()Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->mKeyLockWindow:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    return-object v0
.end method

.method public declared-synchronized isKeyLockWndAdded()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->isKeyLockWndAdded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeKeyLockWnd()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "removeKeyLockWnd"

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->mService:Landroid/app/Service;

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/utility/KeyAllowUtil;->setRecentKeyAllow(ZLandroid/app/Service;)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->mThemeContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->mKeyLockWindow:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    invoke-virtual {v1, v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->removeView(Landroid/view/View;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->setKeyLockWndAdded(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "removeKeyLockWnd layout already removed ~!!"

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->setKeyLockWndAdded(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setKeyLockPressCnt(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->mKeyLockPressCnt:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setKeyLockWndAdded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->isKeyLockWndAdded:Z

    return-void
.end method
