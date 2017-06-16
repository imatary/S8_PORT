.class public Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;
.super Landroid/app/Activity;
.source "EffectManagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$RefreshtaskForLanguageChange;,
        Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$LocaleChangedBroadcastReceiver;,
        Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$CPUEffetctsInstalledBroadcastReceiver;,
        Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$InitEM;,
        Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$CancelRequestReceiver;
    }
.end annotation


# static fields
.field private static final AUTHORITY_FILTERS:Ljava/lang/String; = "com.samsung.android.provider.filterprovider/filters"

.field private static final BASE_URI_FILTERS:Landroid/net/Uri;

.field public static final BTN_ORDER:Ljava/lang/String; = "btn_order"

.field public static final BTN_USE:Ljava/lang/String; = "btn_use"

.field public static final EFFECT_PREF:Ljava/lang/String; = "effect"

.field public static final SUB_STATE_EFFECT_DAWN_CAST_2:I = 0x2

.field public static final SUB_STATE_EFFECT_IMPRESSIONIST_2:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PEDIT_EffectManagerActivity"

.field static mappingGPUIds:Landroid/util/SparseIntArray;


# instance fields
.field gpuloader:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;

.field private initEMTask:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$InitEM;

.field private isIntitializing:Z

.field private isPressCtrl:Z

.field private isSavePrefCalledFromBackPress:Ljava/lang/Boolean;

.field private mActivityContext:Landroid/content/Context;

.field private mBtnInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/mimage/photoretouching/lpe/util/Constants$EffectButtonInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mBtnOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mBtnUse:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mButtonControlManager:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

.field private mCancelReceiver:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$CancelRequestReceiver;

.field private mCpuEffectReceiver:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$CPUEffetctsInstalledBroadcastReceiver;

.field private mEffectCancel:Landroid/widget/LinearLayout;

.field private mEffectDone:Landroid/widget/LinearLayout;

.field mEffectIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mFilterDBObserverForLanguage:Landroid/database/ContentObserver;

.field mGPUEffectCount:I

.field private mGpuEffectsNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mJsonStringPref:Ljava/lang/String;

.field private mLangaugeChangetask:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$RefreshtaskForLanguageChange;

.field private mLocale:Ljava/util/Locale;

.field private mLocaleChangedReceiver:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$LocaleChangedBroadcastReceiver;

.field private mOnChangecount:I

.field mPref:Landroid/content/SharedPreferences;

.field private mPrefer:Landroid/content/SharedPreferences;

.field mProgressDialog:Landroid/app/ProgressDialog;

.field private mSecImaging:Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;

.field private mSecImagingManagerListener:Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging$OnSecImagingManagerListener;

.field private mThumbnailList:[Landroid/graphics/Bitmap;

.field private saveButtonChanged:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.samsung.android.provider.filterprovider/filters"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->BASE_URI_FILTERS:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->gpuloader:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mGPUEffectCount:I

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mPref:Landroid/content/SharedPreferences;

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mBtnInfoList:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->saveButtonChanged:Ljava/lang/Boolean;

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mThumbnailList:[Landroid/graphics/Bitmap;

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mEffectDone:Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mEffectCancel:Landroid/widget/LinearLayout;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mGpuEffectsNames:Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mCpuEffectReceiver:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$CPUEffetctsInstalledBroadcastReceiver;

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mLocaleChangedReceiver:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$LocaleChangedBroadcastReceiver;

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mOnChangecount:I

    iput-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->isIntitializing:Z

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$1;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$1;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mFilterDBObserverForLanguage:Landroid/database/ContentObserver;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$2;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$2;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mSecImagingManagerListener:Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging$OnSecImagingManagerListener;

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mJsonStringPref:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->isSavePrefCalledFromBackPress:Ljava/lang/Boolean;

    iput-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->isPressCtrl:Z

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mOnChangecount:I

    return v0
.end method

.method static synthetic access$002(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mOnChangecount:I

    return p1
.end method

.method static synthetic access$008(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;)I
    .locals 2

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mOnChangecount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mOnChangecount:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;)Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$RefreshtaskForLanguageChange;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mLangaugeChangetask:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$RefreshtaskForLanguageChange;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$102(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$RefreshtaskForLanguageChange;)Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$RefreshtaskForLanguageChange;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mLangaugeChangetask:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$RefreshtaskForLanguageChange;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->isIntitializing:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->reload()V

    return-void
.end method

.method static synthetic access$1300()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->BASE_URI_FILTERS:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;)Landroid/database/ContentObserver;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mFilterDBObserverForLanguage:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mActivityContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->onLanguageChanged()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mEffectDone:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->done()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mEffectCancel:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->cancel()V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;)Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    return-object v0
.end method

.method private adjustActionbarHeight()V
    .locals 4

    const v2, 0x7f0e024c

    invoke-virtual {p0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0802ab

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080385

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method

.method private cancel()V
    .locals 3

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_EFFECTS_MANAGE:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_EFFECTS_MANAGE_CANCEL:Ljava/lang/String;

    const-string v2, "Cancel"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->finish()V

    return-void
.end method

.method private checkThumbnailList()V
    .locals 12

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mThumbnailList:[Landroid/graphics/Bitmap;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mThumbnailList:[Landroid/graphics/Bitmap;

    array-length v4, v4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mBtnInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eq v4, v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mThumbnailList:[Landroid/graphics/Bitmap;

    array-length v6, v5

    move v4, v2

    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v8, v5, v4

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mThumbnailList:[Landroid/graphics/Bitmap;

    :cond_2
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mThumbnailList:[Landroid/graphics/Bitmap;

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mBtnInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/graphics/Bitmap;

    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mThumbnailList:[Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020274

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    mul-int v4, v3, v7

    new-array v1, v4, [I

    move v4, v2

    move v5, v2

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v10, 0x0

    :goto_1
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mBtnInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v10, v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mBtnInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants$EffectButtonInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants$EffectButtonInfo;->getId()I

    move-result v9

    invoke-static {v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isPreloadedEffects(I)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mappingGPUIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    add-int/lit16 v2, v2, 0x102b

    sget v4, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->NO_OF_PRELOAD_GPU:I

    sub-int v9, v2, v4

    :cond_3
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mThumbnailList:[Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1, v3, v7, v9}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->getEffectManagerThumbnail([IIII)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5
    return-void
.end method

.method private createTexture(III)[I
    .locals 4

    mul-int v2, p2, p3

    new-array v1, v2, [I

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    :goto_0
    if-eqz v0, :cond_0

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->makeScaledIntBuffer(Landroid/graphics/Bitmap;[III)V

    :cond_0
    const/4 v0, 0x0

    return-object v1

    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020763

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020762

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02075e

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02075f

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :sswitch_4
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020760

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :sswitch_5
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020761

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :sswitch_6
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02075c

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :sswitch_7
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02075d

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_7
        0x1014 -> :sswitch_0
        0x1015 -> :sswitch_4
        0x1019 -> :sswitch_5
        0x101d -> :sswitch_6
        0x101f -> :sswitch_2
        0x1021 -> :sswitch_1
    .end sparse-switch
.end method

.method private done()V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_EFFECTS_MANAGE:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_EFFECTS_MANAGE_DONE:Ljava/lang/String;

    const-string v2, "Done"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->isButtonUpdated()Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f070182

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->setResult(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->finish()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->isSavePrefCalledFromBackPress:Ljava/lang/Boolean;

    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->savePref(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->setResult(I)V

    goto :goto_0
.end method

.method private getEffectNames(I)Ljava/lang/String;
    .locals 3

    const v2, 0x7f070184

    sparse-switch p1, :sswitch_data_0

    invoke-static {p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isCPUEffects(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->getStringResource(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070079

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isCPUEffects(I)Z

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0x1012

    if-ge p1, v0, :cond_1

    add-int/lit16 p1, p1, -0x1002

    :goto_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mGpuEffectsNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    add-int/lit16 v0, p1, -0x102b

    sget v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->NO_OF_PRELOAD_GPU:I

    add-int p1, v0, v1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mGpuEffectsNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mGpuEffectsNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x104a -> :sswitch_1
    .end sparse-switch
.end method

.method private initActionBar()V
    .locals 8

    const v7, 0x7f0e024e

    const v6, 0x7f0e024d

    const/4 v5, 0x1

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->adjustActionbarHeight()V

    invoke-virtual {p0, v7}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mEffectDone:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mEffectDone:Landroid/widget/LinearLayout;

    const v4, 0x7f0700da

    invoke-static {p0, v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getContenDescriptionButton(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mEffectDone:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mEffectDone:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$3;

    invoke-direct {v4, p0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$3;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mEffectDone:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$4;

    invoke-direct {v4, p0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$4;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-virtual {p0, v6}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mEffectCancel:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->setCancelDoneShapeBackground()V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mEffectCancel:Landroid/widget/LinearLayout;

    const v4, 0x7f070092

    invoke-static {p0, v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getContenDescriptionButton(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mEffectCancel:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mEffectCancel:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$5;

    invoke-direct {v4, p0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$5;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mEffectCancel:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$6;

    invoke-direct {v4, p0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$6;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$7;

    invoke-direct {v2, p0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$7;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;)V

    invoke-virtual {p0, v7}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0, v6}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    return-void
.end method

.method private initButtons()V
    .locals 9

    const v0, 0x7f0e024e

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    :cond_0
    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    invoke-virtual {v0, v7}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->init(Landroid/view/View;)V

    const/4 v1, 0x0

    const/4 v5, 0x0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->getMappingIds()Landroid/util/SparseIntArray;

    move-result-object v0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mappingGPUIds:Landroid/util/SparseIntArray;

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->checkThumbnailList()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mBtnInfoList:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    const/4 v8, 0x0

    :goto_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mBtnInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mBtnInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants$EffectButtonInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants$EffectButtonInfo;->getId()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isPreloadedEffects(I)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mappingGPUIds:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    add-int/lit16 v0, v0, 0x102b

    sget v3, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->NO_OF_PRELOAD_GPU:I

    sub-int v1, v0, v3

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mBtnInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants$EffectButtonInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants$EffectButtonInfo;->getUse()Z

    move-result v5

    const-string v0, "PEDIT_EffectManagerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Putting it into the BCM id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " use: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mBtnInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants$EffectButtonInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants$EffectButtonInfo;->getIndex()I

    move-result v2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mThumbnailList:[Landroid/graphics/Bitmap;

    aget-object v3, v3, v2

    invoke-direct {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->getEffectNames(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->addButton(IILandroid/graphics/Bitmap;Ljava/lang/String;Z)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    :goto_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mBtnInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->getButtonList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;

    move-object v6, v0

    check-cast v6, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->updateLayout()V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowWidth(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->updateScreenWidth(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->setButtonsPos()V

    return-void
.end method

.method private initCPUEffectsInstalledBroadcastReceiver()V
    .locals 3

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$CPUEffetctsInstalledBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$CPUEffetctsInstalledBroadcastReceiver;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$1;)V

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mCpuEffectReceiver:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$CPUEffetctsInstalledBroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mCpuEffectReceiver:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$CPUEffetctsInstalledBroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 5

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v2, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mLocale:Ljava/util/Locale;

    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isGPUFilterSupported(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "EffectManagerActivity"

    invoke-static {p1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getNewSecImagingInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mSecImaging:Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mGpuEffectsNames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mSecImaging:Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;

    invoke-direct {v2, p0, v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;-><init>(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;)V

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->gpuloader:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->gpuloader:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->loadExternalFilters()I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->gpuloader:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->getGPUTitleNames()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mGpuEffectsNames:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->gpuloader:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->getExternalEffectCount()I

    move-result v2

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mGPUEffectCount:I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->gpuloader:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mSecImagingManagerListener:Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging$OnSecImagingManagerListener;

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->setGPUFilterChangeListener(Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging$OnSecImagingManagerListener;)V

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mEffectIds:Ljava/util/ArrayList;

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mGPUEffectCount:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mEffectIds:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->loadPreferences()V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->initActionBar()V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->initButtons()V

    return-void
.end method

.method private makeScaledIntBuffer(Landroid/graphics/Bitmap;[III)V
    .locals 8

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {p1, p3, p4, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, p2

    move v3, p3

    move v4, v2

    move v5, v2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    return-void
.end method

.method private onLanguageChanged()V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mBtnInfoList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mBtnInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mBtnInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants$EffectButtonInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants$EffectButtonInfo;->getId()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isPreloadedEffects(I)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mappingGPUIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    add-int/lit16 v2, v2, 0x102b

    sget v3, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->NO_OF_PRELOAD_GPU:I

    sub-int v1, v2, v3

    :cond_0
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->getButtonList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;

    invoke-direct {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->getEffectNames(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->setText(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private reInit()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->adjustActionbarHeight()V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->initButtons()V

    return-void
.end method

.method private reload()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->loadPreferences()V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->initActionBar()V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->initButtons()V

    return-void
.end method

.method private reloadOnlyThumbnails()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->gpuloader:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->gpuloader:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->getGPUTitleNames()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mGpuEffectsNames:Ljava/util/ArrayList;

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->initActionBar()V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->initButtons()V

    return-void
.end method

.method private savePref(Ljava/lang/Boolean;)Z
    .locals 14

    const/4 v13, 0x0

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    invoke-virtual {v11}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->getButtonList()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v3, v11, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;

    check-cast v11, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;

    invoke-virtual {v11}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->getButtonId()I

    move-result v4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;

    check-cast v11, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;

    invoke-virtual {v11}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->isChecked()Z

    move-result v10

    const/16 v11, 0x1001

    if-ne v4, v11, :cond_0

    const/4 v10, 0x1

    :cond_0
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isPreloadedEffects(I)Z

    move-result v11

    if-nez v11, :cond_1

    add-int/lit16 v11, v4, -0x102b

    sget v12, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->NO_OF_PRELOAD_GPU:I

    add-int v5, v11, v12

    sget-object v11, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mappingGPUIds:Landroid/util/SparseIntArray;

    invoke-virtual {v11, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    :cond_1
    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mBtnOrder:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v3, v12}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mBtnUse:Ljava/util/ArrayList;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v11, v3, v12}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    const-string v11, "effect"

    invoke-virtual {p0, v11, v13}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    iput-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mPrefer:Landroid/content/SharedPreferences;

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mPrefer:Landroid/content/SharedPreferences;

    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    const/4 v3, 0x0

    :goto_1
    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mBtnOrder:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v3, v11, :cond_4

    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mBtnOrder:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v8, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mBtnUse:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v8, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mBtnUse:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_3

    add-int/lit8 v1, v1, 0x1

    :cond_3
    invoke-virtual {v9, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    const-string v11, "effects_data"

    invoke-virtual {v9}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v2, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    const/4 v3, 0x0

    :goto_2
    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mBtnUse:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v3, v11, :cond_6

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mBtnUse:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mBtnOrder:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v7, v6, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    invoke-static {v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->setEffectButtonOrder(Ljava/util/ArrayList;)V

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mJsonStringPref:Ljava/lang/String;

    invoke-virtual {v9}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-nez v11, :cond_7

    const v11, 0x7f070182

    invoke-static {p0, v11, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    :cond_7
    invoke-virtual {p0, v13}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->setResult(I)V

    :cond_8
    const/4 v11, 0x1

    return v11
.end method

.method private setCancelDoneShapeBackground()V
    .locals 2

    const v1, 0x7f0206b5

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mActivityContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isButtonBackgroundShown(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mEffectCancel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mEffectDone:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method private unregisterLocaleChangedReceiver()V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mLocaleChangedReceiver:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$LocaleChangedBroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getEffectManagerThumbnail([IIII)Landroid/graphics/Bitmap;
    .locals 28

    mul-int v5, p2, p3

    new-array v4, v5, [I

    mul-int v5, p2, p3

    new-array v15, v5, [B

    const/16 v26, 0x0

    const/16 v27, 0x0

    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v13, v0, v1, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    const/16 v24, 0x0

    invoke-static/range {p4 .. p4}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isCPUEffects(I)Z

    move-result v5

    if-nez v5, :cond_1

    const/16 v5, 0x1012

    move/from16 v0, p4

    if-ge v0, v5, :cond_2

    move/from16 v0, p4

    add-int/lit16 v0, v0, -0x1002

    move/from16 v24, v0

    :goto_0
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v0, v1, v2, v5}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mSecImaging:Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v24

    invoke-static {v0, v5, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->doProcess(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_3

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move/from16 v6, p2

    move/from16 v9, p2

    move/from16 v10, p3

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    :goto_1
    if-eqz v25, :cond_0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    sparse-switch p4, :sswitch_data_0

    :goto_2
    move-object/from16 v8, v27

    move-object/from16 v7, v26

    :goto_3
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v0, v1, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v16

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v17, v4

    move/from16 v19, p2

    move/from16 v22, p2

    move/from16 v23, p3

    invoke-virtual/range {v16 .. v23}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    const/4 v4, 0x0

    const/4 v15, 0x0

    const/4 v13, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_4
    return-object v16

    :cond_2
    move/from16 v0, p4

    add-int/lit16 v5, v0, -0x102b

    sget v6, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->NO_OF_PRELOAD_GPU:I

    add-int v24, v5, v6

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, v25

    move-object v6, v4

    move/from16 v8, p2

    move/from16 v11, p2

    move/from16 v12, p3

    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    goto :goto_1

    :sswitch_0
    move-object/from16 v0, p1

    array-length v5, v0

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    move-object/from16 v8, v27

    move-object/from16 v7, v26

    goto :goto_3

    :sswitch_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mActivityContext:Landroid/content/Context;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v6, p1

    move-object v7, v4

    move/from16 v8, p2

    move/from16 v9, p3

    invoke-static/range {v5 .. v12}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->applyAutoEnhance(Landroid/content/Context;[I[IIIII[Landroid/graphics/Rect;)V

    move-object/from16 v8, v27

    move-object/from16 v7, v26

    goto :goto_3

    :sswitch_2
    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v0, v4, v1, v2}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applyVintage([I[III)V

    move-object/from16 v8, v27

    move-object/from16 v7, v26

    goto :goto_3

    :sswitch_3
    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v0, v4, v1, v2}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applyPopArt([I[III)V

    move-object/from16 v8, v27

    move-object/from16 v7, v26

    goto :goto_3

    :sswitch_4
    const/16 v10, 0xa

    move-object/from16 v5, p1

    move-object v6, v15

    move-object v7, v4

    move/from16 v8, p2

    move/from16 v9, p3

    move-object v11, v13

    invoke-static/range {v5 .. v11}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->controlGreyscale([I[B[IIIILandroid/graphics/Rect;)V

    move-object/from16 v8, v27

    move-object/from16 v7, v26

    goto/16 :goto_3

    :sswitch_5
    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v0, v4, v1, v2}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applySepia([I[III)I

    move-object/from16 v8, v27

    move-object/from16 v7, v26

    goto/16 :goto_3

    :sswitch_6
    const/4 v5, 0x4

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v0, v4, v1, v2, v5}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applySharpen([I[IIII)I

    move-object/from16 v8, v27

    move-object/from16 v7, v26

    goto/16 :goto_3

    :sswitch_7
    const/16 v5, 0x32

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v0, v4, v1, v2, v5}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applySoftglow([I[IIII)V

    move-object/from16 v8, v27

    move-object/from16 v7, v26

    goto/16 :goto_3

    :sswitch_8
    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v0, v4, v1, v2}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applyRainbow([I[III)V

    move-object/from16 v8, v27

    move-object/from16 v7, v26

    goto/16 :goto_3

    :sswitch_9
    const/16 v5, 0x1014

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->getEffectTexture(III)[I

    move-result-object v7

    move-object/from16 v5, p1

    move-object v6, v4

    move-object v8, v15

    move/from16 v9, p2

    move/from16 v10, p3

    move-object v11, v13

    invoke-static/range {v5 .. v11}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applyStardustPartial([I[I[I[BIILandroid/graphics/Rect;)V

    move-object/from16 v8, v27

    goto/16 :goto_3

    :sswitch_a
    const/16 v5, 0x1015

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->getEffectTexture(III)[I

    move-result-object v7

    move-object/from16 v5, p1

    move-object v6, v4

    move-object v8, v15

    move/from16 v9, p2

    move/from16 v10, p3

    move-object v11, v13

    invoke-static/range {v5 .. v11}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applyLightFlarePartial([I[I[I[BIILandroid/graphics/Rect;)V

    move-object/from16 v8, v27

    goto/16 :goto_3

    :sswitch_b
    const/16 v5, 0x1019

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->getEffectTexture(III)[I

    move-result-object v7

    move-object/from16 v5, p1

    move-object v6, v4

    move-object v8, v15

    move/from16 v9, p2

    move/from16 v10, p3

    move-object v11, v13

    invoke-static/range {v5 .. v11}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applyLightStreakPartial([I[I[I[BIILandroid/graphics/Rect;)V

    move-object/from16 v8, v27

    goto/16 :goto_3

    :sswitch_c
    const/16 v5, 0x1021

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->getEffectTexture(III)[I

    move-result-object v7

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v0, v4, v7, v1, v2}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applySketchTexture([I[I[III)I

    move-object/from16 v8, v27

    goto/16 :goto_3

    :sswitch_d
    move-object/from16 v8, p1

    move-object v9, v15

    move-object v10, v4

    move/from16 v11, p2

    move/from16 v12, p3

    invoke-static/range {v8 .. v13}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applyInvert([I[B[IIILandroid/graphics/Rect;)V

    move-object/from16 v8, v27

    move-object/from16 v7, v26

    goto/16 :goto_3

    :sswitch_e
    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v0, v4, v1, v2}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applyCartoonize([I[III)I

    move-object/from16 v8, v27

    move-object/from16 v7, v26

    goto/16 :goto_3

    :sswitch_f
    const/16 v5, 0x101f

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->getEffectTexture(III)[I

    move-result-object v7

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->getEffectTexture(III)[I

    move-result-object v8

    if-eqz v7, :cond_4

    if-nez v8, :cond_5

    :cond_4
    const/16 v16, 0x0

    goto/16 :goto_4

    :cond_5
    move-object/from16 v5, p1

    move-object v6, v4

    move/from16 v9, p2

    move/from16 v10, p3

    invoke-static/range {v5 .. v10}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applyImpressionist([I[I[I[III)V

    goto/16 :goto_3

    :sswitch_10
    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v0, v4, v1, v2}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applyDownlight([I[III)V

    move-object/from16 v8, v27

    move-object/from16 v7, v26

    goto/16 :goto_3

    :sswitch_11
    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v0, v4, v1, v2}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applyBluewash([I[III)V

    move-object/from16 v8, v27

    move-object/from16 v7, v26

    goto/16 :goto_3

    :sswitch_12
    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v0, v4, v1, v2}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applyNostalgia([I[III)V

    move-object/from16 v8, v27

    move-object/from16 v7, v26

    goto/16 :goto_3

    :sswitch_13
    const/16 v19, 0x32

    move-object/from16 v14, p1

    move-object/from16 v16, v4

    move/from16 v17, p2

    move/from16 v18, p3

    move-object/from16 v20, v13

    invoke-static/range {v14 .. v20}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->controlFadedColour([I[B[IIIILandroid/graphics/Rect;)V

    move-object/from16 v8, v27

    move-object/from16 v7, v26

    goto/16 :goto_3

    :sswitch_14
    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v0, v4, v1, v2}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applyVignette([I[III)V

    move-object/from16 v8, v27

    move-object/from16 v7, v26

    goto/16 :goto_3

    :sswitch_15
    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v0, v4, v1, v2}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applyTurquoise([I[III)V

    move-object/from16 v8, v27

    move-object/from16 v7, v26

    goto/16 :goto_3

    :sswitch_16
    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v0, v4, v1, v2}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applyYellowglow([I[III)V

    move-object/from16 v8, v27

    move-object/from16 v7, v26

    goto/16 :goto_3

    :sswitch_17
    const/16 v5, 0x101d

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->getEffectTexture(III)[I

    move-result-object v7

    const/4 v5, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->getEffectTexture(III)[I

    move-result-object v8

    if-eqz v7, :cond_6

    if-nez v8, :cond_7

    :cond_6
    const/16 v16, 0x0

    goto/16 :goto_4

    :cond_7
    move-object/from16 v5, p1

    move-object v6, v4

    move/from16 v9, p2

    move/from16 v10, p3

    invoke-static/range {v5 .. v10}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applyDawnCast([I[I[I[III)V

    goto/16 :goto_3

    :sswitch_18
    const/16 v19, 0x64

    move-object/from16 v14, p1

    move-object/from16 v16, v4

    move/from16 v17, p2

    move/from16 v18, p3

    move-object/from16 v20, v13

    invoke-static/range {v14 .. v20}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applyPosterizePartial([I[B[IIIILandroid/graphics/Rect;)I

    move-object/from16 v8, v27

    move-object/from16 v7, v26

    goto/16 :goto_3

    :sswitch_19
    move-object/from16 v16, p1

    move-object/from16 v17, v4

    move-object/from16 v18, v15

    move/from16 v19, p2

    move/from16 v20, p3

    move-object/from16 v21, v13

    invoke-static/range {v16 .. v21}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applyGothicNoirPartial([I[I[BIILandroid/graphics/Rect;)V

    move-object/from16 v8, v27

    move-object/from16 v7, v26

    goto/16 :goto_3

    :sswitch_1a
    move-object/from16 v14, p1

    move-object/from16 v16, v4

    move/from16 v17, p2

    move/from16 v18, p3

    move-object/from16 v19, v13

    invoke-static/range {v14 .. v19}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applyMagicPenPartial([I[B[IIILandroid/graphics/Rect;)I

    goto/16 :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1012 -> :sswitch_6
        0x1013 -> :sswitch_7
        0x1014 -> :sswitch_9
        0x1015 -> :sswitch_a
        0x1016 -> :sswitch_e
        0x1017 -> :sswitch_2
        0x1018 -> :sswitch_8
        0x1019 -> :sswitch_b
        0x101a -> :sswitch_10
        0x101b -> :sswitch_11
        0x101c -> :sswitch_16
        0x101d -> :sswitch_17
        0x101e -> :sswitch_15
        0x101f -> :sswitch_f
        0x1020 -> :sswitch_d
        0x1021 -> :sswitch_c
        0x1022 -> :sswitch_3
        0x1023 -> :sswitch_18
        0x1024 -> :sswitch_19
        0x1025 -> :sswitch_1a
        0x1026 -> :sswitch_14
        0x1027 -> :sswitch_13
        0x1028 -> :sswitch_12
        0x1029 -> :sswitch_4
        0x102a -> :sswitch_5
        0x104a -> :sswitch_1
    .end sparse-switch
.end method

.method public getEffectTexture(III)[I
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->createTexture(III)[I

    move-result-object v0

    return-object v0
.end method

.method public initLocaleChangedBroadcastReceiver()V
    .locals 2

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$LocaleChangedBroadcastReceiver;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$LocaleChangedBroadcastReceiver;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;)V

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mLocaleChangedReceiver:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$LocaleChangedBroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mLocaleChangedReceiver:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$LocaleChangedBroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public loadPreferences()V
    .locals 14

    const/4 v11, 0x0

    const-string v10, "effect"

    invoke-virtual {p0, v10, v11}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    iput-object v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mPref:Landroid/content/SharedPreferences;

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mPref:Landroid/content/SharedPreferences;

    const-string v11, "effects_data"

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mJsonStringPref:Ljava/lang/String;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mBtnOrder:Ljava/util/ArrayList;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mBtnUse:Ljava/util/ArrayList;

    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v8

    const/4 v6, 0x0

    const/4 v3, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v8, :cond_0

    add-int/lit8 v6, v7, 0x1

    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v0

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mBtnOrder:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mBtnUse:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move v7, v6

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mBtnInfoList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    :goto_1
    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mBtnOrder:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v3, v10, :cond_1

    const-string v10, "PEDIT_EffectManagerActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Adding to Btn Info List:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " id:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mBtnOrder:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mBtnInfoList:Ljava/util/ArrayList;

    new-instance v12, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants$EffectButtonInfo;

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mBtnOrder:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mBtnUse:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-direct {v12, v13, v10, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants$EffectButtonInfo;-><init>(IZI)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->finish()V

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 13

    const v12, 0x7f0e0061

    const v2, 0x7f0805e9

    const v4, 0x7f0800e6

    const/4 v6, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->isIntitializing:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->adjustActionbarHeight()V

    const v0, 0x7f0e024d

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, p0

    move v3, v2

    move v5, v4

    move v7, v6

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateLinearLayoutParamsForView(Landroid/content/Context;Landroid/view/View;IIIIII)V

    const v0, 0x7f0e024e

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, p0

    move v3, v2

    move v5, v4

    move v7, v6

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateLinearLayoutParamsForView(Landroid/content/Context;Landroid/view/View;IIIIII)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mLocale:Ljava/util/Locale;

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mLocale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mLocale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isGPUFilterSupported(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->onLanguageChanged()V

    :cond_2
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mLocale:Ljava/util/Locale;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mBtnInfoList:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    const/4 v9, 0x0

    :goto_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mBtnInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v9, v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->getButtonList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;

    move-object v8, v0

    check-cast v8, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->getButtonId()I

    move-result v10

    invoke-static {v10}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isPreloadedEffects(I)Z

    move-result v0

    if-nez v0, :cond_3

    add-int/lit16 v0, v10, -0x102b

    sget v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->NO_OF_PRELOAD_GPU:I

    add-int v11, v0, v1

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mappingGPUIds:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v11}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v10

    :cond_3
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mBtnInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants$EffectButtonInfo;

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants$EffectButtonInfo;->setIndex(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mBtnInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants$EffectButtonInfo;

    invoke-virtual {v0, v10}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants$EffectButtonInfo;->setmId(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mBtnInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants$EffectButtonInfo;

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants$EffectButtonInfo;->setUse(Z)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->isButtonUpdated()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->saveButtonChanged:Ljava/lang/Boolean;

    :cond_5
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->reInit()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->saveButtonChanged:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->setChange(Z)V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/16 v4, 0x400

    const/4 v5, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->finish()V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v5}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v4, v4}, Landroid/view/Window;->setFlags(II)V

    const v3, 0x7f030073

    invoke-virtual {p0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {v2}, Landroid/view/Window;->getNavigationBarColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setNavigationBarColor(I)V

    iput-object p0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mActivityContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->initCPUEffectsInstalledBroadcastReceiver()V

    iput-boolean v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->isIntitializing:Z

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->initEMTask:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$InitEM;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->initEMTask:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$InitEM;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$InitEM;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v3

    sget-object v4, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->initEMTask:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$InitEM;

    invoke-virtual {v3, v5}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$InitEM;->cancel(Z)Z

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->initEMTask:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$InitEM;

    :cond_1
    new-instance v3, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$InitEM;

    invoke-direct {v3, p0, p0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$InitEM;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->initEMTask:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$InitEM;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->initEMTask:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$InitEM;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$InitEM;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "request_cancel_effects_manager"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$CancelRequestReceiver;

    invoke-direct {v3, p0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$CancelRequestReceiver;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;)V

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mCancelReceiver:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$CancelRequestReceiver;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mCancelReceiver:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$CancelRequestReceiver;

    invoke-virtual {p0, v3, v0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onDestroy()V
    .locals 6

    const/4 v5, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mLocaleChangedReceiver:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$LocaleChangedBroadcastReceiver;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->unregisterLocaleChangedReceiver()V

    iput-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mLocaleChangedReceiver:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$LocaleChangedBroadcastReceiver;

    :cond_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mSecImaging:Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;

    const-string v2, " EffectmanagerActivity"

    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->releaseSecImaging(Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mActivityContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mFilterDBObserverForLanguage:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mThumbnailList:[Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mThumbnailList:[Landroid/graphics/Bitmap;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iput-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mThumbnailList:[Landroid/graphics/Bitmap;

    :cond_3
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mCpuEffectReceiver:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$CPUEffetctsInstalledBroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mCancelReceiver:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$CancelRequestReceiver;

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x71

    if-eq p1, v0, :cond_0

    const/16 v0, 0x72

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->isPressCtrl:Z

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->isPressCtrl:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x1d

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->selectAllItem()V

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x71

    if-eq p1, v0, :cond_0

    const/16 v0, 0x72

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->isPressCtrl:Z

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onMultiWindowModeChanged(Z)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->isInMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mBtnInfoList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mBtnInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->getButtonList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;

    move-object v0, v2

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->reInitCheckbox()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public selectAllItem()V
    .locals 5

    const/4 v4, 0x1

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->getButtonList()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->isChecked()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;

    invoke-virtual {v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlManager;->setChange(Z)V

    :cond_0
    invoke-virtual {v1, v4}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->setChecked(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updatePreferences()V
    .locals 7

    const-string v5, "effect"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mPref:Landroid/content/SharedPreferences;

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/16 v5, 0x1000

    invoke-static {v5, p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->getSubButtonOrderForEffects(ILandroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Z)Lorg/json/JSONArray;

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v5, "effects_data"

    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
