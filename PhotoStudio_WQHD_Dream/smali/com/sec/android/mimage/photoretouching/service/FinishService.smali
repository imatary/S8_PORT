.class public Lcom/sec/android/mimage/photoretouching/service/FinishService;
.super Landroid/app/Service;
.source "FinishService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/mimage/photoretouching/service/FinishService$HideImageReceiver;
    }
.end annotation


# static fields
.field private static final DEFAULT_ANIMATION_DURATION:I = 0x0

.field private static final DEFAULT_HIDE_ANIMATION_DURATION:I = 0x3e8

.field private static final DEFAULT_SETIMAGE_RETRY_TIME:I = 0x0

.field private static final EXTRA_STR_DURATION:Ljava/lang/String; = "duration"

.field private static final MSG_ADD_VIEW:I = 0x6

.field private static final MSG_HIDE_VIEW:I = 0x3

.field private static final MSG_SET_IMAGE:I = 0x4

.field private static final MSG_SHOW_VIEW:I = 0x1

.field private static final MSG_SHOW_VIEW_WITH_ANIMATION:I = 0x2

.field private static final MSG_TIME_OUT_FOR_HIDE_VIEW:I = 0x5

.field private static final TAG:Ljava/lang/String; = "PEDIT_FinishService"

.field private static final TIME_OUT_DURATION_FOR_HIDE_VIEW:I = 0x3e8

.field private static final WINDOW_MANAGER_LAYOUT_FLAG:I = 0x80508

.field private static final WINDOW_MANAGER_LAYOUT_TYPE:I = 0x7d2


# instance fields
.field private mAnimationDuration:I

.field private mAnimator:Landroid/view/ViewPropertyAnimator;

.field mBinder:Lcom/sec/android/mimage/photoretouching/service/IFinishService$Stub;

.field private mBlurBitmap:Landroid/graphics/Bitmap;

.field private mBoundary:Landroid/graphics/Rect;

.field private mHideAnimationDuration:I

.field private mHideImageReceiver:Lcom/sec/android/mimage/photoretouching/service/FinishService$HideImageReceiver;

.field private mImageView:Landroid/widget/ImageView;

.field private mIsHideAnimationState:Z

.field private mIsShowAnimationState:Z

.field private mMainHandler:Landroid/os/Handler;

.field private mNeedHideView:Z

.field private mParams:Landroid/view/WindowManager$LayoutParams;

.field private mQuickView:Landroid/view/View;

.field private mQuickViewAttatched:Z

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService;->mBoundary:Landroid/graphics/Rect;

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService;->mAnimationDuration:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService;->mHideAnimationDuration:I

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService;->mQuickViewAttatched:Z

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService;->mIsShowAnimationState:Z

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService;->mIsHideAnimationState:Z

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService;->mAnimator:Landroid/view/ViewPropertyAnimator;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;-><init>(Lcom/sec/android/mimage/photoretouching/service/FinishService;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService;->mMainHandler:Landroid/os/Handler;

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService;->mHideImageReceiver:Lcom/sec/android/mimage/photoretouching/service/FinishService$HideImageReceiver;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/service/FinishService$2;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/service/FinishService$2;-><init>(Lcom/sec/android/mimage/photoretouching/service/FinishService;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService;->mBinder:Lcom/sec/android/mimage/photoretouching/service/IFinishService$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService;->mQuickViewAttatched:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sec/android/mimage/photoretouching/service/FinishService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService;->mQuickViewAttatched:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService;->mQuickView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService;->mIsShowAnimationState:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/sec/android/mimage/photoretouching/service/FinishService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService;->mIsShowAnimationState:Z

    return p1
.end method

.method static synthetic access$102(Lcom/sec/android/mimage/photoretouching/service/FinishService;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService;->mQuickView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Landroid/view/ViewPropertyAnimator;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService;->mAnimator:Landroid/view/ViewPropertyAnimator;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/sec/android/mimage/photoretouching/service/FinishService;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService;->mAnimator:Landroid/view/ViewPropertyAnimator;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/sec/android/mimage/photoretouching/service/FinishService;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService;->mHideAnimationDuration:I

    return v0
.end method

.method static synthetic access$1202(Lcom/sec/android/mimage/photoretouching/service/FinishService;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService;->mHideAnimationDuration:I

    return p1
.end method

.method static synthetic access$1300(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService;->mIsHideAnimationState:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/sec/android/mimage/photoretouching/service/FinishService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService;->mIsHideAnimationState:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Landroid/view/WindowManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/mimage/photoretouching/service/FinishService;Landroid/view/WindowManager;)Landroid/view/WindowManager;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService;->mWindowManager:Landroid/view/WindowManager;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/android/mimage/photoretouching/service/FinishService;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService;->mImageView:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService;->mBlurBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/android/mimage/photoretouching/service/FinishService;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService;->mBlurBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Landroid/view/WindowManager$LayoutParams;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService;->mParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/android/mimage/photoretouching/service/FinishService;Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService;->mParams:Landroid/view/WindowManager$LayoutParams;

    return-object p1
.end method

.method static synthetic access$600(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService;->mBoundary:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sec/android/mimage/photoretouching/service/FinishService;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService;->mBoundary:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$700(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService;->mNeedHideView:Z

    return v0
.end method

.method static synthetic access$702(Lcom/sec/android/mimage/photoretouching/service/FinishService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService;->mNeedHideView:Z

    return p1
.end method

.method static synthetic access$800(Lcom/sec/android/mimage/photoretouching/service/FinishService;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->requestFinishActivity()V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/mimage/photoretouching/service/FinishService;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService;->mAnimationDuration:I

    return v0
.end method

.method static synthetic access$902(Lcom/sec/android/mimage/photoretouching/service/FinishService;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService;->mAnimationDuration:I

    return p1
.end method

.method public static varargs getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v2, "PEDIT_FinishService"

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static varargs invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v2, "PEDIT_FinishService"

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "PEDIT_FinishService"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v2, "PEDIT_FinishService"

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private requestFinishActivity()V
    .locals 7

    const-wide/16 v2, 0x1388

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const-string v0, "exit_broadcast"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v6}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v0, Lcom/sec/android/mimage/photoretouching/service/FinishService$3;

    move-object v1, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/service/FinishService$3;-><init>(Lcom/sec/android/mimage/photoretouching/service/FinishService;JJ)V

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/service/FinishService$3;->start()Landroid/os/CountDownTimer;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    const-string v0, "PEDIT_FinishService"

    const-string v1, "onBind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService;->mBinder:Lcom/sec/android/mimage/photoretouching/service/IFinishService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 13

    const/4 v3, 0x0

    const/4 v1, -0x1

    const/4 v12, 0x1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "PEDIT_FinishService"

    const-string v2, "onCreate"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    const v0, 0x7f03003d

    invoke-virtual {v9, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    const v0, 0x7f0e0061

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService;->mImageView:Landroid/widget/ImageView;

    iput-object v11, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService;->mQuickView:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService;->mQuickView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v10, 0x0

    const/4 v6, 0x1

    :try_start_0
    const-string v0, "android.provider.Settings"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "canDrawOverlays"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    :goto_0
    if-eqz v10, :cond_0

    const/4 v0, 0x0

    const/4 v2, 0x1

    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v10, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v0

    if-nez v0, :cond_0

    const/4 v6, 0x0

    :cond_0
    :goto_1
    if-eqz v6, :cond_1

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7d2

    const v4, 0x80508

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x100

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService;->mQuickView:Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v12, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService;->mQuickViewAttatched:Z

    :goto_2
    new-instance v0, Lcom/sec/android/mimage/photoretouching/service/FinishService$HideImageReceiver;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/service/FinishService$HideImageReceiver;-><init>(Lcom/sec/android/mimage/photoretouching/service/FinishService;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService;->mHideImageReceiver:Lcom/sec/android/mimage/photoretouching/service/FinishService$HideImageReceiver;

    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "show_image"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "show_image_with_animation"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "hide_image"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService;->mHideImageReceiver:Lcom/sec/android/mimage/photoretouching/service/FinishService$HideImageReceiver;

    invoke-virtual {v0, v1, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :catch_0
    move-exception v7

    const-string v0, "PEDIT_FinishService"

    invoke-virtual {v7}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v7

    :goto_3
    const-string v0, "PEDIT_FinishService"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string v0, "PEDIT_FinishService"

    const-string v1, "can not Draw Overlays"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_2
    move-exception v7

    goto :goto_3

    :catch_3
    move-exception v7

    goto :goto_3
.end method

.method public onDestroy()V
    .locals 5

    const/4 v4, 0x0

    const-string v2, "PEDIT_FinishService"

    const-string v3, "onDestroy"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService;->mAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService;->mAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService;->mAnimator:Landroid/view/ViewPropertyAnimator;

    :cond_0
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService;->mImageView:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v2, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService;->mQuickView:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService;->mQuickViewAttatched:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService;->mQuickView:Landroid/view/View;

    invoke-interface {v2, v3}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService;->mQuickViewAttatched:Z

    :cond_2
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService;->mBlurBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService;->mBlurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService;->mBlurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService;->mBlurBitmap:Landroid/graphics/Bitmap;

    :cond_4
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService;->mHideImageReceiver:Lcom/sec/android/mimage/photoretouching/service/FinishService$HideImageReceiver;

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService;->mHideImageReceiver:Lcom/sec/android/mimage/photoretouching/service/FinishService$HideImageReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_5
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method
