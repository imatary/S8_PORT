.class public Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;
.super Lcom/sec/android/mimage/photoretouching/lpe/states/AppState;
.source "Effects.java"

# interfaces
.implements Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow$WindowListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;,
        Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$CPUThumbReloader;,
        Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$CPUEffetctsInstalledBroadcastReceiver;,
        Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;,
        Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$SecImageLoader;,
        Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbView;
    }
.end annotation


# static fields
.field public static final EFFECT_CACHE_SIZE:I = 0x5

.field public static final MSG_UPDATE_SEEKBAR:I = 0xff

.field private static final TAG:Ljava/lang/String; = "PEDIT_Effects"


# instance fields
.field cpuThumbloader:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$CPUThumbReloader;

.field deletedIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private gpuIDs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field gpuloader:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;

.field isDownloadCPUPackageAvailable:Z

.field private isGPUFilterSupported:Ljava/lang/Boolean;

.field private isInitGPUFilter:Z

.field isLanguageChanged:Z

.field private lastCacheIndex:I

.field private mActionBarHidden:Z

.field mBackupIds:Ljava/util/ArrayList;
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

.field private mCpuEffectReceiver:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$CPUEffetctsInstalledBroadcastReceiver;

.field private mCurrEffect:I

.field mCurrIndex:I

.field private mEffectCache:[Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;

.field private mEffectThumbnails:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mEffectThumbsParent:Landroid/view/ViewGroup;

.field public mGPUEffectCount:I

.field private mGPURefIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mGPUUniqueIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mGpuEffectNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mGpuEffectTitle:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGpuVendornames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mHandlerMain:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field mIsAdded:Z

.field mIsChange:Z

.field private mIsThumbsLoaded:Z

.field mJSONIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLoaderTask:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;

.field mOrginalPrefIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mPref:Landroid/content/SharedPreferences;

.field private mPreview:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;

.field private mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

.field private mProgress:I

.field private mResultBitmap:Landroid/graphics/Bitmap;

.field private mScrollView:Landroid/widget/HorizontalScrollView;

.field private mSecImaging:Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;

.field private mSelection:Landroid/view/View;

.field private mServiceId:I

.field private mThumbLayoutWidth:I

.field mappingIds:Landroid/util/SparseIntArray;

.field newIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private thumbData:[I

.field private thumbHeight:I

.field private thumbWidth:I


# direct methods
.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;)V
    .locals 8

    const/16 v1, 0x1000

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/states/AppState;-><init>(ILcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mGPUEffectCount:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mGpuEffectTitle:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mGpuEffectNames:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->gpuloader:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->isDownloadCPUPackageAvailable:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mCurrIndex:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->isLanguageChanged:Z

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbnails:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mSecImaging:Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->isInitGPUFilter:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mGPUUniqueIds:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->gpuIDs:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mGpuVendornames:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mGPURefIds:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mServiceId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mActionBarHidden:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mCpuEffectReceiver:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$CPUEffetctsInstalledBroadcastReceiver;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->isGPUFilterSupported:Ljava/lang/Boolean;

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->lastCacheIndex:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mGpuEffectNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mGpuEffectTitle:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mGPUUniqueIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mGpuVendornames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isGPUFilterSupported(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->isGPUFilterSupported:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0804bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mThumbLayoutWidth:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->isGPUFilterSupported:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$SecImageLoader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$SecImageLoader;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$SecImageLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->initCPUEffectsInstalledBroadcastReceiver()V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->initEffectCache()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->isGPUFilterSupported:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->updateGPUSupport(Z)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->loadPreferences()V

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbsParent:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;I)[I
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->applyPreview(I)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbsParent:Landroid/view/ViewGroup;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)[Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectCache:[Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->getEffectTitleNames(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mCurrEffect:I

    return v0
.end method

.method static synthetic access$1400(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mHandlerMain:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->lastCacheIndex:I

    return v0
.end method

.method static synthetic access$1600(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mLoaderTask:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;)Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mLoaderTask:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mSecImaging:Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mThumbLayoutWidth:I

    return v0
.end method

.method static synthetic access$2100(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->initGPU()V

    return-void
.end method

.method static synthetic access$2200(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbnails:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->isInitGPUFilter:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->getIconForGpuEffects(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)[I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->thumbData:[I

    return-object v0
.end method

.method static synthetic access$2600(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->thumbWidth:I

    return v0
.end method

.method static synthetic access$2700(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->thumbHeight:I

    return v0
.end method

.method static synthetic access$2800(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mGPURefIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mGPUUniqueIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->deleteRow(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->updateCPUEffectsthumbnails(Z)V

    return-void
.end method

.method static synthetic access$3200(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->insertRow(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mSelection:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mSelection:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mServiceId:I

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->isGPUFilterSupported:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Landroid/widget/HorizontalScrollView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mScrollView:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method static synthetic access$702(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;Landroid/widget/HorizontalScrollView;)Landroid/widget/HorizontalScrollView;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mScrollView:Landroid/widget/HorizontalScrollView;

    return-object p1
.end method

.method static synthetic access$800(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mActionBarHidden:Z

    return v0
.end method

.method static synthetic access$802(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mActionBarHidden:Z

    return p1
.end method

.method static synthetic access$900(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mPreview:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;

    return-object v0
.end method

.method private applyNextEffect()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectCache:[Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->next()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mPreview:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->next()V

    return-void
.end method

.method private applyPrevEffect()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectCache:[Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->prev()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mPreview:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->prev()V

    return-void
.end method

.method private applyPreview(I)[I
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->getMainState()I

    move-result v1

    const/16 v2, 0x1000

    if-eq v1, v2, :cond_1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v14

    const/4 v3, 0x0

    if-eqz v14, :cond_2

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v1

    if-nez v1, :cond_3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v1

    array-length v1, v1

    new-array v3, v1, [I

    if-ltz p1, :cond_0

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->sEffectButtonOrder:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move/from16 v0, p1

    if-gt v0, v1, :cond_0

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->sEffectButtonOrder:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v15

    const/16 v1, 0x1012

    if-lt v15, v1, :cond_4

    const/16 v1, 0x102a

    if-le v15, v1, :cond_5

    :cond_4
    const/16 v1, 0x1001

    if-ne v15, v1, :cond_6

    :cond_5
    const/16 v17, 0x1

    :goto_1
    if-eqz v17, :cond_7

    packed-switch v15, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v1

    const/4 v2, 0x0

    const/4 v7, 0x0

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v8

    array-length v8, v8

    invoke-static {v1, v2, v3, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_6
    const/16 v17, 0x0

    goto :goto_1

    :pswitch_2
    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v1

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewMaskBuffer()[B

    move-result-object v2

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v4

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v5

    new-instance v6, Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-direct {v6, v7, v8, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static/range {v1 .. v6}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applyVintagePartial([I[B[IIILandroid/graphics/Rect;)V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v1

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v2

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v7

    invoke-static {v1, v3, v2, v7}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applyPopArt([I[III)V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v1

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewMaskBuffer()[B

    move-result-object v2

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v4

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v5

    const/16 v6, 0xa

    new-instance v7, Landroid/graphics/Rect;

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-direct {v7, v8, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static/range {v1 .. v7}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->controlGreyscale([I[B[IIIILandroid/graphics/Rect;)V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v1

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewMaskBuffer()[B

    move-result-object v2

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v4

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v5

    new-instance v6, Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-direct {v6, v7, v8, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static/range {v1 .. v6}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applySepiaPartial([I[B[IIILandroid/graphics/Rect;)I

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v1

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewMaskBuffer()[B

    move-result-object v2

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v4

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v5

    const/4 v6, 0x4

    new-instance v7, Landroid/graphics/Rect;

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-direct {v7, v8, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static/range {v1 .. v7}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applySharpenPartial([I[B[IIIILandroid/graphics/Rect;)I

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v1

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewMaskBuffer()[B

    move-result-object v2

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v4

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v5

    const/16 v6, 0x32

    new-instance v7, Landroid/graphics/Rect;

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-direct {v7, v8, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static/range {v1 .. v7}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applySoftglowPartial([I[B[IIIILandroid/graphics/Rect;)V

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v1

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewMaskBuffer()[B

    move-result-object v2

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v4

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v5

    new-instance v6, Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-direct {v6, v7, v8, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static/range {v1 .. v6}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applyRainbowPartial([I[B[IIILandroid/graphics/Rect;)V

    goto/16 :goto_0

    :pswitch_9
    const/16 v1, 0x1014

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v2

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2, v7}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->getTexture(III)[I

    move-result-object v4

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v2

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewMaskBuffer()[B

    move-result-object v5

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v6

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v7

    new-instance v8, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v10, 0x0

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-direct {v8, v1, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static/range {v2 .. v8}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applyStardustPartial([I[I[I[BIILandroid/graphics/Rect;)V

    goto/16 :goto_0

    :pswitch_a
    const/16 v1, 0x1015

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v2

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2, v7}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->getTexture(III)[I

    move-result-object v4

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v2

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewMaskBuffer()[B

    move-result-object v5

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v6

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v7

    new-instance v8, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v10, 0x0

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-direct {v8, v1, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static/range {v2 .. v8}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applyLightFlarePartial([I[I[I[BIILandroid/graphics/Rect;)V

    goto/16 :goto_0

    :pswitch_b
    const/16 v1, 0x1019

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v2

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2, v7}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->getTexture(III)[I

    move-result-object v4

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v2

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewMaskBuffer()[B

    move-result-object v5

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v6

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v7

    new-instance v8, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v10, 0x0

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-direct {v8, v1, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static/range {v2 .. v8}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applyLightStreakPartial([I[I[I[BIILandroid/graphics/Rect;)V

    goto/16 :goto_0

    :pswitch_c
    const/16 v1, 0x1021

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v2

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2, v7}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->getTexture(III)[I

    move-result-object v4

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v2

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewMaskBuffer()[B

    move-result-object v5

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v6

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v7

    new-instance v8, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v10, 0x0

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-direct {v8, v1, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static/range {v2 .. v8}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applySketchTexturePartial([I[I[I[BIILandroid/graphics/Rect;)I

    goto/16 :goto_0

    :pswitch_d
    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v5

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewMaskBuffer()[B

    move-result-object v6

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v8

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v9

    new-instance v10, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-direct {v10, v1, v2, v7, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v7, v3

    invoke-static/range {v5 .. v10}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applyInvert([I[B[IIILandroid/graphics/Rect;)V

    goto/16 :goto_0

    :pswitch_e
    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v5

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewMaskBuffer()[B

    move-result-object v6

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v8

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v9

    new-instance v10, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-direct {v10, v1, v2, v7, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v7, v3

    invoke-static/range {v5 .. v10}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applyCartoonizePartial([I[B[IIILandroid/graphics/Rect;)I

    goto/16 :goto_0

    :pswitch_f
    const/16 v1, 0x101f

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v2

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2, v7}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->getTexture(III)[I

    move-result-object v4

    const/4 v1, 0x1

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v2

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2, v7}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->getTexture(III)[I

    move-result-object v5

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v2

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewMaskBuffer()[B

    move-result-object v6

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v7

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v8

    new-instance v9, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v10, 0x0

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-direct {v9, v1, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static/range {v2 .. v9}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applyImpressionistPartial([I[I[I[I[BIILandroid/graphics/Rect;)V

    goto/16 :goto_0

    :pswitch_10
    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v6

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewMaskBuffer()[B

    move-result-object v7

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v9

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v10

    new-instance v11, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-direct {v11, v1, v2, v8, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v8, v3

    invoke-static/range {v6 .. v11}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applyDownlightPartial([I[B[IIILandroid/graphics/Rect;)V

    goto/16 :goto_0

    :pswitch_11
    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v6

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewMaskBuffer()[B

    move-result-object v7

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v9

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v10

    new-instance v11, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-direct {v11, v1, v2, v8, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v8, v3

    invoke-static/range {v6 .. v11}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applyBluewashPartial([I[B[IIILandroid/graphics/Rect;)V

    goto/16 :goto_0

    :pswitch_12
    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v6

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewMaskBuffer()[B

    move-result-object v7

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v9

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v10

    new-instance v11, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-direct {v11, v1, v2, v8, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v8, v3

    invoke-static/range {v6 .. v11}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applyNostalgiaPartial([I[B[IIILandroid/graphics/Rect;)V

    goto/16 :goto_0

    :pswitch_13
    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v6

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewMaskBuffer()[B

    move-result-object v7

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v9

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v10

    const/16 v11, 0x32

    new-instance v12, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    invoke-direct {v12, v1, v2, v8, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v8, v3

    invoke-static/range {v6 .. v12}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->controlFadedColour([I[B[IIIILandroid/graphics/Rect;)V

    goto/16 :goto_0

    :pswitch_14
    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v6

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewMaskBuffer()[B

    move-result-object v7

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v9

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v10

    new-instance v11, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-direct {v11, v1, v2, v8, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v8, v3

    invoke-static/range {v6 .. v11}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applyVignettePartial([I[B[IIILandroid/graphics/Rect;)V

    goto/16 :goto_0

    :pswitch_15
    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v6

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewMaskBuffer()[B

    move-result-object v7

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v9

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v10

    new-instance v11, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-direct {v11, v1, v2, v8, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v8, v3

    invoke-static/range {v6 .. v11}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applyTurquoisePartial([I[B[IIILandroid/graphics/Rect;)V

    goto/16 :goto_0

    :pswitch_16
    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v6

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewMaskBuffer()[B

    move-result-object v7

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v9

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v10

    new-instance v11, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-direct {v11, v1, v2, v8, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v8, v3

    invoke-static/range {v6 .. v11}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applyYellowglowPartial([I[B[IIILandroid/graphics/Rect;)V

    goto/16 :goto_0

    :pswitch_17
    const/16 v1, 0x101d

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v2

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2, v7}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->getTexture(III)[I

    move-result-object v4

    const/4 v1, 0x2

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v2

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2, v7}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->getTexture(III)[I

    move-result-object v5

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v2

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewMaskBuffer()[B

    move-result-object v6

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v7

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v8

    new-instance v9, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v10, 0x0

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-direct {v9, v1, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static/range {v2 .. v9}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applyDawnCastPartial([I[I[I[I[BIILandroid/graphics/Rect;)V

    goto/16 :goto_0

    :pswitch_18
    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v6

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewMaskBuffer()[B

    move-result-object v7

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v9

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v10

    const/16 v11, 0x64

    new-instance v12, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    invoke-direct {v12, v1, v2, v8, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v8, v3

    invoke-static/range {v6 .. v12}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applyPosterizePartial([I[B[IIIILandroid/graphics/Rect;)I

    goto/16 :goto_0

    :pswitch_19
    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v6

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewMaskBuffer()[B

    move-result-object v8

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v9

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v10

    new-instance v11, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-direct {v11, v1, v2, v7, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v7, v3

    invoke-static/range {v6 .. v11}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applyGothicNoirPartial([I[I[BIILandroid/graphics/Rect;)V

    goto/16 :goto_0

    :pswitch_1a
    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v6

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewMaskBuffer()[B

    move-result-object v7

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v9

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v10

    new-instance v11, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-direct {v11, v1, v2, v8, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v8, v3

    invoke-static/range {v6 .. v11}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applyMagicPenPartial([I[B[IIILandroid/graphics/Rect;)I

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0x1002

    if-lt v15, v1, :cond_8

    sget v1, Lcom/sec/android/mimage/photoretouching/lpe/states/AppState;->SUB_STATE_EFFECT_GPU_EFFECT_16:I

    if-gt v15, v1, :cond_8

    add-int/lit16 v15, v15, -0x1002

    :goto_2
    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v9

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mSecImaging:Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;

    if-nez v1, :cond_9

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mappingIds:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v15}, Landroid/util/SparseIntArray;->get(I)I

    move-result v15

    goto :goto_2

    :cond_9
    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v9, v13, v2}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v16

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mSecImaging:Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;

    move-object/from16 v0, v16

    invoke-static {v1, v2, v0, v15}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->doProcess(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_a

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v7, v3

    move v12, v9

    invoke-virtual/range {v6 .. v13}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    :cond_a
    sget-boolean v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->isPngImage:Z

    if-eqz v1, :cond_b

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v1

    invoke-static {v1, v3, v9, v13}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->copyInputAlpha([I[III)I

    :cond_b
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->recycle()V

    if-eqz v6, :cond_c

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    :cond_c
    const/16 v16, 0x0

    const/4 v6, 0x0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1001
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_e
        :pswitch_2
        :pswitch_8
        :pswitch_b
        :pswitch_10
        :pswitch_11
        :pswitch_16
        :pswitch_17
        :pswitch_15
        :pswitch_f
        :pswitch_d
        :pswitch_c
        :pswitch_3
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private deleteRow(Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v10, 0x0

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "effect"

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mPref:Landroid/content/SharedPreferences;

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mPref:Landroid/content/SharedPreferences;

    const-string v9, "effects_data"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v6}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    :goto_0
    if-ltz v3, :cond_1

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONArray;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    if-eqz p1, :cond_0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    const-string v8, "effects_data"

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private doOriginalDone(Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;)V
    .locals 9

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mCurrEffect:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v3

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mProgress:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$9;

    move-object v2, p0

    move-object v8, p1

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$9;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;JIILcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;)V

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager;->addJob(Ljava/lang/Runnable;Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager$JobDoneCallBack;)V

    return-void
.end method

.method private getEffectNameById(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x1012

    if-ge p1, v0, :cond_1

    add-int/lit16 p1, p1, -0x1002

    :goto_0
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mGpuEffectNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_2

    :cond_0
    const-string v0, "Effect"

    :goto_1
    return-object v0

    :cond_1
    add-int/lit16 v0, p1, -0x102b

    sget v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->NO_OF_PRELOAD_GPU:I

    add-int p1, v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mGpuEffectNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1
.end method

.method private getEffectTitleNames(I)Ljava/lang/String;
    .locals 3

    const v2, 0x7f070184

    packed-switch p1, :pswitch_data_0

    invoke-static {p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isCPUEffects(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->getStringResource(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x1012

    if-ge p1, v0, :cond_1

    add-int/lit16 p1, p1, -0x1002

    :goto_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mGpuEffectTitle:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

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
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mGpuEffectTitle:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    if-ltz p1, :cond_3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mGpuEffectTitle:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1001
        :pswitch_0
    .end packed-switch
.end method

.method private getEffectTitleNamesEnglish(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isCPUEffects(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->getEffectStringEnglish(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/16 v1, 0x1012

    if-ge p1, v1, :cond_2

    add-int/lit16 p1, p1, -0x1002

    :goto_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mGpuEffectNames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mGpuEffectNames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mGpuEffectNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_2
    add-int/lit16 v1, p1, -0x102b

    sget v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->NO_OF_PRELOAD_GPU:I

    add-int p1, v1, v2

    goto :goto_1
.end method

.method private getIconForGpuEffects(I)I
    .locals 3

    const/4 v0, -0x1

    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mGpuVendornames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mGpuVendornames:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->VENDOR_AILIIIS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0x7f02047a

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mGpuVendornames:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->VENDOR_B612:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v0, 0x7f020477

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mGpuVendornames:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->VENDOR_CAMERA_360:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const v0, 0x7f020478

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mGpuVendornames:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->VENDOR_UCAM:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const v0, 0x7f02047b

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mGpuVendornames:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->VENDOR_CANDYCAMERA:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const v0, 0x7f020479

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mGpuVendornames:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->VENDOR_LINECAMERA:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const v0, 0x7f02047a

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mGpuVendornames:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->VENDOR_SWEETSELFIE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x7f02047b

    goto :goto_0
.end method

.method public static getStringForLoggingApi(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "VIGNETTE"

    goto :goto_0

    :pswitch_2
    const-string v0, "VINTAGE"

    goto :goto_0

    :pswitch_3
    const-string v0, "FADEDCOLOURS"

    goto :goto_0

    :pswitch_4
    const-string v0, "SEPIA"

    goto :goto_0

    :pswitch_5
    const-string v0, "STARDUST"

    goto :goto_0

    :pswitch_6
    const-string v0, "LIGHT_FLARE"

    goto :goto_0

    :pswitch_7
    const-string v0, "LIGHT_STREAK"

    goto :goto_0

    :pswitch_8
    const-string v0, "DOWNLIGHT"

    goto :goto_0

    :pswitch_9
    const-string v0, "BLUEWASH"

    goto :goto_0

    :pswitch_a
    const-string v0, "SHARPEN"

    goto :goto_0

    :pswitch_b
    const-string v0, "SOFTGLOW"

    goto :goto_0

    :pswitch_c
    const-string v0, "TURQUOISE"

    goto :goto_0

    :pswitch_d
    const-string v0, "IMPRESSIONIST"

    goto :goto_0

    :pswitch_e
    const-string v0, "COMIC"

    goto :goto_0

    :pswitch_f
    const-string v0, "NEGATIVE"

    goto :goto_0

    :pswitch_10
    const-string v0, "YELLOWGLOW"

    goto :goto_0

    :pswitch_11
    const-string v0, "DAWNCAST"

    goto :goto_0

    :pswitch_12
    const-string v0, "POSTERISE"

    goto :goto_0

    :pswitch_13
    const-string v0, "GOTHICNOIR"

    goto :goto_0

    :pswitch_14
    const-string v0, "MAGICPEN"

    goto :goto_0

    :pswitch_15
    const-string v0, "TINT"

    goto :goto_0

    :pswitch_16
    const-string v0, "SKETCH ART"

    goto :goto_0

    :pswitch_17
    const-string v0, "POP ART"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1012
        :pswitch_a
        :pswitch_b
        :pswitch_5
        :pswitch_6
        :pswitch_e
        :pswitch_2
        :pswitch_15
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_10
        :pswitch_11
        :pswitch_c
        :pswitch_d
        :pswitch_f
        :pswitch_16
        :pswitch_17
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private initCPUEffectsInstalledBroadcastReceiver()V
    .locals 3

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$CPUEffetctsInstalledBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$CPUEffetctsInstalledBroadcastReceiver;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;)V

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mCpuEffectReceiver:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$CPUEffetctsInstalledBroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mCpuEffectReceiver:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$CPUEffetctsInstalledBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private initEffectCache()V
    .locals 6

    const/4 v4, 0x5

    new-array v1, v4, [Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectCache:[Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectCache:[Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;

    add-int/lit8 v3, v0, -0x2

    invoke-direct {v2, p0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;I)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectCache:[Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;

    new-instance v5, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;

    invoke-direct {v5, p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;[Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview$EffectsPreviewListener;)V

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mPreview:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;

    return-void
.end method

.method private initGPU()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "EFFECTS "

    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getNewSecImagingInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mSecImaging:Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->gpuloader:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mSecImaging:Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;-><init>(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;)V

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->gpuloader:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->gpuloader:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->registerGPUFilterChangeListener()V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->gpuloader:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->gpuloader:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->loadExternalFilters()I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->gpuloader:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->getExternalEffectCount()I

    move-result v1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mGPUEffectCount:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->gpuloader:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->getIDs()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mGPUUniqueIds:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mGPUUniqueIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->gpuIDs:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mGPUUniqueIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mBackupIds:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mGPURefIds:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->gpuloader:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->getGPUTitleNames()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mGpuEffectTitle:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->gpuloader:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->getGPUEffectNames()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mGpuEffectNames:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->gpuloader:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->getVendorandEffectNames()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mGpuVendornames:Ljava/util/ArrayList;

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mGPUEffectCount:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mGPURefIds:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mappingIds:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mGPUUniqueIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mGPURefIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mappingIds:Landroid/util/SparseIntArray;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mGPUUniqueIds:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mGPURefIds:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mappingIds:Landroid/util/SparseIntArray;

    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->setMappingIds(Landroid/util/SparseIntArray;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->isInitGPUFilter:Z

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->loadPreferences()V

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private insertRow(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "effect"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mPref:Landroid/content/SharedPreferences;

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mPref:Landroid/content/SharedPreferences;

    const-string v7, "effects_data"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_0

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(Z)Lorg/json/JSONArray;

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string v6, "effects_data"

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private isIDinPref(I)Z
    .locals 13

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v10}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "effect"

    invoke-virtual {v10, v11, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    iput-object v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mPref:Landroid/content/SharedPreferences;

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mPref:Landroid/content/SharedPreferences;

    const-string v11, "effects_data"

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    const/4 v5, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v6, v5

    :goto_0
    if-ge v6, v7, :cond_0

    add-int/lit8 v5, v6, 0x1

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v8

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v6, v5

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-eqz v10, :cond_1

    const/4 v9, 0x1

    :cond_1
    :goto_1
    return v9

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
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

.method private resetToolPosition()V
    .locals 14

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v10}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getOrientation()I

    move-result v3

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v10}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v8

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v10}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v7

    const/4 v10, 0x2

    if-ne v3, v10, :cond_1

    const/4 v1, 0x0

    const/4 v9, 0x0

    move v6, v8

    move v0, v7

    :goto_0
    const/4 v1, 0x0

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v10}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->getActionBarHeight(Landroid/content/Context;)I

    move-result v9

    move v6, v8

    move v0, v7

    new-instance v2, Landroid/graphics/RectF;

    int-to-float v10, v1

    int-to-float v11, v9

    int-to-float v12, v6

    int-to-float v13, v0

    invoke-direct {v2, v10, v11, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v10, v2, Landroid/graphics/RectF;->left:F

    float-to-int v10, v10

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v11}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f080485

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    add-int v4, v10, v11

    iget v10, v2, Landroid/graphics/RectF;->top:F

    float-to-int v10, v10

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v11}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f080486

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    add-int v5, v10, v11

    const/4 v10, 0x1

    if-ne v3, v10, :cond_0

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v10}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f080443

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    add-int/2addr v5, v10

    :cond_0
    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v10, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->moveToolWidget(II)V

    return-void

    :cond_1
    const/4 v1, 0x0

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v10}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->getActionBarHeight(Landroid/content/Context;)I

    move-result v9

    move v6, v8

    move v0, v7

    goto :goto_0
.end method

.method private updateCPUEffectsName()V
    .locals 9

    const v8, 0x7f0e025f

    const v7, 0x7f0e0252

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbnails:Landroid/util/SparseArray;

    const/16 v6, 0x1001

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_0

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f070184

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbnails:Landroid/util/SparseArray;

    const/16 v6, 0x1402

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f07015e

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbnails:Landroid/util/SparseArray;

    const/16 v6, 0x1401

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0700de

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    const/4 v1, 0x0

    :goto_0
    sget v5, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->NO_OF_DOWNLOAD_CPU:I

    if-ge v1, v5, :cond_4

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbnails:Landroid/util/SparseArray;

    sget-object v5, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->cpuorder:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    if-eqz v4, :cond_3

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    sget-object v6, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->cpuorder:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->getEffectTitleNames(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f08058e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setFadingEdgeLength(I)V

    const v5, 0x7f0e025e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    sget-object v6, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->cpuorder:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->getEffectTitleNames(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getContenDescriptionButton(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private updateCPUEffectsthumbnails(Z)V
    .locals 6

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->cpuThumbloader:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$CPUThumbReloader;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->cpuThumbloader:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$CPUThumbReloader;

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$CPUThumbReloader;->cancel(Z)Z

    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->cpuThumbloader:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$CPUThumbReloader;

    :cond_0
    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$CPUThumbReloader;

    invoke-direct {v2, p0, v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$CPUThumbReloader;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;)V

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->cpuThumbloader:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$CPUThumbReloader;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->cpuThumbloader:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$CPUThumbReloader;

    new-array v3, v3, [Ljava/lang/Boolean;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$CPUThumbReloader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_1
    sget v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->NO_OF_DOWNLOAD_CPU:I

    if-ge v0, v2, :cond_2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbnails:Landroid/util/SparseArray;

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->cpuorder:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbnails:Landroid/util/SparseArray;

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->cpuorder:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->remove(I)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbsParent:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v2, v5, v5}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 10

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->releaseTask()V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mSecImaging:Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;

    if-eqz v6, :cond_0

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mSecImaging:Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;

    monitor-enter v7

    :try_start_0
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mSecImaging:Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;

    const-string v8, " CLEAN UP EFFETCS"

    invoke-static {v6, v8}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->releaseSecImaging(Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;Ljava/lang/String;)V

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mSecImaging:Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->gpuloader:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->gpuloader:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->cleanUp()V

    iput-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->gpuloader:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;

    :cond_1
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mCpuEffectReceiver:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$CPUEffetctsInstalledBroadcastReceiver;

    invoke-virtual {v6, v7}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectCache:[Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbnails:Landroid/util/SparseArray;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbnails:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_5

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbnails:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbnails:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    const/4 v3, 0x0

    if-eqz v5, :cond_2

    const v6, 0x7f0e025e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_2

    const v6, 0x7f0e0064

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    :cond_2
    if-eqz v3, :cond_4

    instance-of v6, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbView;

    if-eqz v6, :cond_4

    move-object v4, v3

    check-cast v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbView;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbView;->mThumb:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbView;->access$1700(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbView;)Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_4

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbView;->mThumb:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbView;->access$1700(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbView;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbView;->mThumb:Landroid/graphics/Bitmap;
    invoke-static {v4, v9}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbView;->access$1702(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    :cond_5
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbnails:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->clear()V

    :cond_6
    iput-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mActionBarManager:Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;

    return-void
.end method

.method public doCancel()V
    .locals 8

    const/16 v7, 0x1000

    const/16 v6, 0x100

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewOutputBuffer()[I

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v3

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewOutputBuffer()[I

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v3

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getCurrLayer()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->setImageData([IIII)V

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mCurrState:I

    if-eq v1, v7, :cond_1

    iput v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mCurrState:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getmServiceId()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v1, v6}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setState(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->setResultAndExit()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v1, v6}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setState(I)V

    goto :goto_0
.end method

.method public doDone(Z)V
    .locals 13

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mCurrEffect:I

    const/16 v4, 0x1001

    if-eq v2, v4, :cond_0

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mProgress:I

    if-nez v2, :cond_3

    :cond_0
    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f070182

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->doCancel()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectCache:[Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;

    const/4 v4, 0x2

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->getData()[I

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectCache:[Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;

    const/4 v4, 0x2

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->getState()I

    move-result v2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_5

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->doCancel()V

    goto :goto_0

    :cond_5
    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_EFFECTS:Ljava/lang/String;

    sget-object v4, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_EFFECTS_ADJUST_VALUE:Ljava/lang/String;

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mCurrEffect:I

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->getEffectTitleNames(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mProgress:I

    const/16 v4, 0x64

    if-eq v2, v4, :cond_6

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_EFFECTS:Ljava/lang/String;

    sget-object v4, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_EFFECTS_ADJUST_VALUE_SEEKBAR:Ljava/lang/String;

    const-string v5, "Adjust value"

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mProgress:I

    int-to-long v6, v6

    invoke-static {v2, v4, v5, v6, v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventHaveValueSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_6
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v2

    invoke-virtual {v11}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v11}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v11}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v11}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v6

    invoke-virtual {v11}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v7

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mResultBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mResultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mResultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mResultBitmap:Landroid/graphics/Bitmap;

    :cond_7
    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mResultBitmap:Landroid/graphics/Bitmap;

    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mResultBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mCurrEffect:I

    const/16 v4, 0x1022

    if-ne v2, v4, :cond_8

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mProgress:I

    mul-int/lit16 v2, v2, 0xff

    div-int/lit8 v2, v2, 0x64

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v4, v5, v6}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    :cond_8
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mProgress:I

    mul-int/lit16 v2, v2, 0xff

    div-int/lit8 v2, v2, 0x64

    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectCache:[Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;

    const/4 v4, 0x2

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->getData()[I

    move-result-object v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectCache:[Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;

    const/4 v4, 0x2

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->getState()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_9

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectCache:[Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;

    const/4 v4, 0x2

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->getData()[I

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v11}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v11}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v7

    invoke-virtual {v11}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v8

    const/4 v9, 0x1

    invoke-virtual/range {v1 .. v10}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    :cond_9
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mResultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v11}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v11}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v8

    invoke-virtual {v11}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v9

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    invoke-virtual {v11}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v11}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewOutputBuffer()[I

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v11}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v7

    array-length v7, v7

    invoke-static {v2, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v11}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v4

    invoke-virtual {v11}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v5

    invoke-virtual {v11}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getCurrLayer()I

    move-result v7

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->setImageData([IIII)V

    new-instance v3, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getCurrLayer()I

    move-result v2

    invoke-direct {v3, v2}, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;-><init>(I)V

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mServiceId:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_a

    invoke-virtual {v11}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v4

    invoke-virtual {v11}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v5

    invoke-virtual {v11}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v6

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->addPreviewToHistory(Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;[IIIZ)V

    :cond_a
    invoke-virtual {v11}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->setEdited()V

    invoke-virtual {v11}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->resetOriginal()V

    const-string v12, ""

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mCurrEffect:I

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isCPUEffects(I)Z

    move-result v2

    if-eqz v2, :cond_b

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mCurrEffect:I

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->getStringForLoggingApi(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->doOriginalDone(Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;)V

    :goto_1
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "E300"

    invoke-static {v2, v4, v12}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->reloadThumbnail()V

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mCurrState:I

    const/16 v4, 0x1000

    if-eq v2, v4, :cond_2

    const/16 v2, 0x1000

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mCurrState:I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getmServiceId()I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_c

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    const/16 v4, 0x100

    invoke-virtual {v2, v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setState(I)V

    goto/16 :goto_0

    :cond_b
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mCurrEffect:I

    invoke-direct {p0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->getEffectNameById(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->doGPUOriginalDone(Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;)V

    goto :goto_1

    :cond_c
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->setResultAndExit()V

    goto/16 :goto_0
.end method

.method public doGPUOriginalDone(Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;)V
    .locals 13

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mCurrEffect:I

    const/16 v10, 0x1012

    if-ge v1, v10, :cond_0

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mCurrEffect:I

    add-int/lit16 v8, v1, -0x1002

    :goto_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getOriginalWidth()I

    move-result v6

    invoke-virtual {v11}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getOriginalHeight()I

    move-result v7

    iget v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mProgress:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v11}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getOriginalBufferId()I

    move-result v4

    invoke-virtual {v11}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getOriginalMaskId()I

    move-result v5

    const/4 v12, 0x0

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$10;

    move-object v1, p0

    move-object v10, p1

    invoke-direct/range {v0 .. v11}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$10;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;JIIIIIILcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager;->addJob(Ljava/lang/Runnable;Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager$JobDoneCallBack;)V

    return-void

    :cond_0
    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mCurrEffect:I

    add-int/lit16 v1, v1, -0x102b

    sget v10, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->NO_OF_PRELOAD_GPU:I

    add-int v8, v1, v10

    goto :goto_0
.end method

.method public draw()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mPreview:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mPreview:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->draw()V

    :cond_0
    return-void
.end method

.method public findIdFromExecutor(Ljava/lang/String;)I
    .locals 3

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbnails:Landroid/util/SparseArray;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbnails:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbnails:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbnails:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->getEffectTitleNames(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbnails:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public freeResources()V
    .locals 7

    const/4 v6, 0x0

    const v5, 0x7f0805f1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mScrollView:Landroid/widget/HorizontalScrollView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->getTotalbuttonsWidth()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_1
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mResultBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mResultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mResultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mResultBitmap:Landroid/graphics/Bitmap;

    :cond_2
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v3, v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setSeekVisibility(Z)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mPreview:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->clearLoading()V

    const/4 v3, -0x1

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mCurrIndex:I

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectCache:[Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;

    array-length v4, v3

    :goto_1
    if-ge v2, v4, :cond_4

    aget-object v0, v3, v2

    invoke-virtual {v0, v6}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->setData([I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v3, v2, v2}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mSelection:Landroid/view/View;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mSelection:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mSelection:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    return-void
.end method

.method public getID(I)I
    .locals 4

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mappingIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    add-int/lit16 v2, v1, 0x102a

    sget v3, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->NO_OF_PRELOAD_GPU:I

    sub-int/2addr v2, v3

    add-int/lit8 v0, v2, 0x1

    return v0
.end method

.method public getTexture(III)[I
    .locals 4

    mul-int v2, p2, p3

    new-array v1, v2, [I

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    :goto_0
    if-eqz v0, :cond_0

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->makeScaledIntBuffer(Landroid/graphics/Bitmap;[III)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v0, 0x0

    return-object v1

    :sswitch_0
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020349

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0206bc

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020764

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :sswitch_3
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020146

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :sswitch_4
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020348

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :sswitch_5
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02034a

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :sswitch_6
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02034b

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :sswitch_7
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02034c

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

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

.method public getTotalbuttonsWidth()I
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbsParent:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v2}, Landroid/view/ViewGroup;->measure(II)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbsParent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public init()V
    .locals 6

    const/4 v2, 0x0

    monitor-enter p0

    const/16 v1, 0x1001

    :try_start_0
    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mCurrEffect:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mPreview:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mPreview:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mCurrEffect:I

    invoke-virtual {v1, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->updateCurrentEffect(I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mPreview:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->setPreviewRect(Landroid/graphics/RectF;)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_1
    new-instance v1, Landroid/os/HandlerThread;

    const-string v3, "effects"

    invoke-direct {v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$2;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mHandlerMain:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$3;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$3;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mActionBarManager:Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->enableDone(Z)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->loadReference()V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mScrollView:Landroid/widget/HorizontalScrollView;

    if-nez v1, :cond_2

    monitor-exit p0

    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mScrollView:Landroid/widget/HorizontalScrollView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    :goto_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    new-instance v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$4;

    invoke-direct {v3, p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$4;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->postDelayed(Ljava/lang/Runnable;J)Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    const/16 v3, 0x1000

    invoke-virtual {v1, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->updateSeekBar(I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-virtual {v1, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setSeekProgress(F)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setSeekVisibility(Z)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mHandlerMain:Landroid/os/Handler;

    new-instance v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$5;

    invoke-direct {v3, p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$5;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectCache:[Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;

    array-length v4, v3

    move v1, v2

    :goto_2
    if-ge v1, v4, :cond_4

    aget-object v0, v3, v1

    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->setState(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mScrollView:Landroid/widget/HorizontalScrollView;

    const/16 v3, 0x42

    invoke-virtual {v1, v3}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_4
    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mActionBarHidden:Z

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->isApplyAvailable:Z

    goto :goto_0
.end method

.method public isThumbsLoaded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mIsThumbsLoaded:Z

    return v0
.end method

.method public launchEffectDownloadIntent()V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "E700"

    invoke-static {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "samsungapps://SubCategoryList/0000005082"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const v2, 0x4000020

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    const/4 v3, 0x3

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f07032d

    invoke-static {v2, v3}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->showToastShort(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public launchEffectManagerIntent()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "E600"

    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.mimage.photoretouching.lpe.effectmanager.EffectManagerActivity"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public loadCache(Z)V
    .locals 10

    const/4 v5, 0x1

    const/4 v9, 0x2

    const/4 v6, 0x0

    const-string v4, "PEDIT_Effects"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "refresh: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->isApplyAvailable:Z

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mHandlerMain:Landroid/os/Handler;

    new-instance v7, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$11;

    invoke-direct {v7, p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$11;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)V

    invoke-virtual {v4, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    if-eqz p1, :cond_0

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectCache:[Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;

    array-length v8, v7

    move v4, v6

    :goto_0
    if-ge v4, v8, :cond_0

    aget-object v2, v7, v4

    invoke-virtual {v2, v6}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->setState(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    const/4 v4, 0x5

    if-ge v0, v4, :cond_8

    rem-int/lit8 v4, v0, 0x2

    if-nez v4, :cond_3

    const/4 v4, -0x1

    :goto_2
    add-int/lit8 v6, v0, 0x1

    div-int/lit8 v6, v6, 0x2

    mul-int/2addr v4, v6

    add-int/lit8 v1, v4, 0x2

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectCache:[Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;

    aget-object v2, v4, v1

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->getState()I

    move-result v4

    if-nez v4, :cond_2

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mCurrIndex:I

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->getId()I

    move-result v6

    add-int/2addr v4, v6

    if-ltz v4, :cond_1

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mCurrIndex:I

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->getId()I

    move-result v6

    add-int/2addr v4, v6

    sget-object v6, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->sEffectButtonOrder:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v4, v6, :cond_4

    :cond_1
    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->setState(I)V

    :cond_2
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v4, v5

    goto :goto_2

    :cond_4
    invoke-virtual {v2, v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->setState(I)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mHandler:Landroid/os/Handler;

    if-nez v4, :cond_6

    :cond_5
    :goto_4
    return-void

    :cond_6
    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->set()V

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mCurrIndex:I

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->getId()I

    move-result v6

    add-int v3, v4, v6

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x4

    if-ne v0, v4, :cond_7

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->lastCacheIndex:I

    :cond_7
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3

    :cond_8
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectCache:[Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;

    aget-object v4, v4, v9

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->getState()I

    move-result v4

    if-ne v4, v9, :cond_5

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectCache:[Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;

    aget-object v5, v5, v9

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->getColor()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->sendSeekbarColor(I)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mHandlerMain:Landroid/os/Handler;

    new-instance v5, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$12;

    invoke-direct {v5, p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$12;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4
.end method

.method public loadPreferences()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v15}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v15

    const-string v16, "effect"

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mPref:Landroid/content/SharedPreferences;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v15}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isCPUDownloadedPackageExisted(Landroid/content/Context;)Z

    move-result v15

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->isDownloadCPUPackageAvailable:Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mPref:Landroid/content/SharedPreferences;

    const-string v16, "effects_data"

    invoke-interface/range {v15 .. v16}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_5

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->isDownloadCPUPackageAvailable:Z

    if-eqz v15, :cond_1

    const/4 v6, 0x0

    :goto_0
    sget-object v15, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->cpuorder:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v6, v15, :cond_1

    sget-object v15, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->sEffectButtonOrder:Ljava/util/ArrayList;

    sget-object v16, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->cpuorder:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    sget-object v15, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->sEffectButtonOrder:Ljava/util/ArrayList;

    sget-object v16, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->cpuorder:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mGPUEffectCount:I

    sget v16, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->NO_OF_PRELOAD_GPU:I

    move/from16 v0, v16

    if-le v15, v0, :cond_3

    sget v6, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->NO_OF_PRELOAD_GPU:I

    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mGPUUniqueIds:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v6, v15, :cond_3

    sget-object v15, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->sEffectButtonOrder:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mGPUUniqueIds:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2

    sget-object v15, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->sEffectButtonOrder:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mGPUUniqueIds:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    new-instance v14, Lorg/json/JSONArray;

    invoke-direct {v14}, Lorg/json/JSONArray;-><init>()V

    const/16 v15, 0x1000

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->getSubButtonOrderForEffects(ILandroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v6, 0x0

    :goto_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v6, v15, :cond_4

    new-instance v13, Lorg/json/JSONArray;

    invoke-direct {v13}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v13, v15}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const/4 v15, 0x1

    invoke-virtual {v13, v15}, Lorg/json/JSONArray;->put(Z)Lorg/json/JSONArray;

    invoke-virtual {v14, v13}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v15, "effects_data"

    invoke-virtual {v14}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v4, v15, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_3
    return-void

    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mPref:Landroid/content/SharedPreferences;

    const-string v16, "effects_data"

    const/16 v17, 0x0

    invoke-interface/range {v15 .. v17}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mJSONIds:Ljava/util/ArrayList;

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mBtnUse:Ljava/util/ArrayList;

    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v8}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v11

    const/4 v9, 0x0

    move v10, v9

    :goto_4
    if-ge v10, v11, :cond_6

    add-int/lit8 v9, v10, 0x1

    invoke-virtual {v2, v10}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v13

    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Lorg/json/JSONArray;->getInt(I)I

    move-result v7

    const/4 v15, 0x1

    invoke-virtual {v13, v15}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mJSONIds:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mBtnUse:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v10, v9

    goto :goto_4

    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mJSONIds:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mOrginalPrefIds:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->isDownloadCPUPackageAvailable:Z

    if-eqz v15, :cond_8

    const/4 v6, 0x0

    :goto_5
    sget-object v15, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->cpuorder:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v6, v15, :cond_a

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mJSONIds:Ljava/util/ArrayList;

    sget-object v16, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->cpuorder:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mJSONIds:Ljava/util/ArrayList;

    sget-object v16, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->cpuorder:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_8
    const/4 v6, 0x0

    :goto_6
    sget-object v15, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->cpuorder:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v6, v15, :cond_a

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mJSONIds:Ljava/util/ArrayList;

    sget-object v16, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->cpuorder:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mJSONIds:Ljava/util/ArrayList;

    sget-object v16, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->cpuorder:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_a
    sget v6, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->NO_OF_PRELOAD_GPU:I

    :goto_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mGPUUniqueIds:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v6, v15, :cond_c

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mJSONIds:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mGPUUniqueIds:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->gpuIDs:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mGPUUniqueIds:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_c
    sget v6, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->NO_OF_PRELOAD_GPU:I

    :goto_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->gpuIDs:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v6, v15, :cond_e

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mJSONIds:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->gpuIDs:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_d

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mJSONIds:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->gpuIDs:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_e
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    :goto_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mJSONIds:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v6, v15, :cond_10

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mGPUUniqueIds:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mJSONIds:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_f

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mJSONIds:Ljava/util/ArrayList;

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v15}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isPreloadedEffects(I)Z

    move-result v15

    if-nez v15, :cond_f

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mJSONIds:Ljava/util/ArrayList;

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_10
    const/4 v6, 0x0

    :goto_a
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v6, v15, :cond_11

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mJSONIds:Ljava/util/ArrayList;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    :cond_11
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->updatePreferenceIfChange(Ljava/util/ArrayList;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->updateSEffectOrder()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_3
.end method

.method public loadResources()V
    .locals 0

    return-void
.end method

.method public onCompare11()V
    .locals 0

    return-void
.end method

.method public onCompareOriginal1()V
    .locals 0

    return-void
.end method

.method public onExitClick(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;)V
    .locals 0

    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;)V
    .locals 0

    return-void
.end method

.method public onLanguageChangeForEffects()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->gpuloader:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->isGPUFilterSupported:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->gpuloader:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->startProgressbar()V

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->scrollOnLanguageChange()V

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->getMainState()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mCurrState:I

    invoke-direct {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->getEffectTitleNames(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setSeekTitle(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->updateCPUEffectsName()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onOrientationChange()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mProgress:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setSeekProgress(F)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mPreview:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->onOrientationChange()V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->sendMessageUpdateSeekbar()V

    return-void
.end method

.method public onOriginal()V
    .locals 0

    return-void
.end method

.method public onProgressChange(I)V
    .locals 3

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mProgress:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mProgress:I

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->setEffectProgress(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mPreview:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mPreview:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;

    int-to-float v1, p1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->onProgressUpdated(F)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    return-void
.end method

.method public onSubState(I)V
    .locals 14

    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v11, -0x1

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mCurrEffect:I

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mPreview:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mPreview:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;

    iget v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mCurrEffect:I

    invoke-virtual {v8, v9}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->updateCurrentEffect(I)V

    :cond_0
    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbsParent:Landroid/view/ViewGroup;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbsParent:Landroid/view/ViewGroup;

    iget v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mCurrEffect:I

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v8

    check-cast v8, Landroid/app/Activity;

    iget v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mCurrEffect:I

    invoke-direct {p0, v9}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->getEffectTitleNames(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getContenDescriptionButton(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mCurrEffect:I

    const/16 v9, 0x1001

    if-ne v8, v9, :cond_7

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v8, v12}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setSeekVisibility(Z)V

    :goto_0
    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mPreview:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mPreview:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;

    iget v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mProgress:I

    int-to-float v9, v9

    const/high16 v10, 0x42c80000    # 100.0f

    div-float/2addr v9, v10

    invoke-virtual {v8, v9}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->onProgressUpdated(F)V

    :cond_2
    const/4 v1, 0x0

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mCurrIndex:I

    iput v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mCurrIndex:I

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isDreamUX()Z

    move-result v8

    if-eqz v8, :cond_8

    const/16 v3, 0xe

    :goto_1
    sget-object v8, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->sEffectButtonOrder:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v8, 0x1000

    if-lt v0, v8, :cond_3

    const/16 v8, 0x102a

    if-le v0, v8, :cond_4

    :cond_3
    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mappingIds:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    add-int v10, v3, p1

    add-int/lit16 v10, v10, -0x102a

    if-eq v8, v10, :cond_5

    :cond_4
    if-ne v0, p1, :cond_9

    :cond_5
    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mCurrIndex:I

    :cond_6
    if-eq v5, v11, :cond_d

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mCurrIndex:I

    if-eq v5, v8, :cond_d

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mCurrIndex:I

    sub-int v8, v5, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    const/4 v9, 0x2

    if-gt v8, v9, :cond_d

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mCurrIndex:I

    if-ge v5, v8, :cond_b

    monitor-enter p0

    move v0, v5

    :goto_3
    :try_start_0
    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mCurrIndex:I

    if-ge v0, v8, :cond_a

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->applyNextEffect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    const/16 v8, 0x64

    iput v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mProgress:I

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    iget v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mProgress:I

    invoke-virtual {v8, v9}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->setEffectProgress(I)V

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    iget v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mProgress:I

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setSeekProgress(F)V

    goto :goto_0

    :cond_8
    const/16 v3, 0xf

    goto :goto_1

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_a
    :try_start_1
    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    invoke-virtual {p0, v12}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->loadCache(Z)V

    :goto_5
    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mHandlerMain:Landroid/os/Handler;

    new-instance v9, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$8;

    invoke-direct {v9, p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$8;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;I)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbsParent:Landroid/view/ViewGroup;

    if-nez v8, :cond_e

    :goto_6
    return-void

    :catchall_0
    move-exception v8

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    :cond_b
    monitor-enter p0

    move v0, v5

    :goto_7
    :try_start_3
    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mCurrIndex:I

    if-le v0, v8, :cond_c

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->applyPrevEffect()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    :cond_c
    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    monitor-exit p0

    goto :goto_4

    :catchall_1
    move-exception v8

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v8

    :cond_d
    invoke-virtual {p0, v13}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->loadCache(Z)V

    goto :goto_5

    :cond_e
    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0805f1

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mThumbLayoutWidth:I

    add-int/2addr v8, v6

    iget v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mCurrIndex:I

    mul-int/2addr v9, v8

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_f

    neg-int v8, v6

    :goto_8
    add-int v2, v9, v8

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mSelection:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_13

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mServiceId:I

    if-ne v8, v11, :cond_12

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->isGPUFilterSupported:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_10

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mThumbLayoutWidth:I

    add-int/2addr v8, v6

    sget-object v9, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->sEffectButtonOrder:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    mul-int/2addr v8, v9

    sub-int/2addr v8, v2

    iput v8, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    :goto_9
    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mSelection:Landroid/view/View;

    invoke-virtual {v8, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mSelection:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mSelection:Landroid/view/View;

    invoke-virtual {v8, v13}, Landroid/view/View;->setFocusable(Z)V

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mSelection:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getId()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setSeekNextDownFocus(I)V

    iput-boolean v12, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mActionBarHidden:Z

    goto/16 :goto_6

    :cond_f
    move v8, v6

    goto :goto_8

    :cond_10
    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mThumbLayoutWidth:I

    add-int v9, v8, v6

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isSupportDownloadEffect()Z

    move-result v8

    if-eqz v8, :cond_11

    sget-object v8, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->sEffectButtonOrder:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    :goto_a
    mul-int/2addr v8, v9

    sub-int/2addr v8, v2

    iput v8, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_9

    :cond_11
    sget-object v8, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->sEffectButtonOrder:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    goto :goto_a

    :cond_12
    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mThumbLayoutWidth:I

    add-int/2addr v8, v6

    sget-object v9, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->sEffectButtonOrder:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    mul-int/2addr v8, v9

    sub-int/2addr v8, v2

    iput v8, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_9

    :cond_13
    iput v2, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_9
.end method

.method public onSurfaceChanged()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->getMainState()I

    move-result v1

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectCache:[Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->setState(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->loadCache(Z)V

    :cond_2
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mPreview:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mPreview:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->onSurfaceChanged()V

    :cond_3
    return-void
.end method

.method public onThumbnailUpdate()V
    .locals 9

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v8

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->thumbWidth:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->thumbHeight:I

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->thumbWidth:I

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->thumbHeight:I

    mul-int/2addr v1, v3

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->thumbData:[I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->thumbData:[I

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->thumbWidth:I

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->thumbWidth:I

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->thumbHeight:I

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->reload()V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mPreview:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mPreview:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public rearrangeThumbs()V
    .locals 14

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbsParent:Landroid/view/ViewGroup;

    if-nez v11, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbsParent:Landroid/view/ViewGroup;

    invoke-virtual {v11}, Landroid/view/ViewGroup;->removeAllViews()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/16 v11, 0x1000

    iget-object v12, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v12}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->getSubButtonOrderForEffects(ILandroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbsParent:Landroid/view/ViewGroup;

    invoke-virtual {v11}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v1, v11, :cond_7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mGPUUniqueIds:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isPreloadedEffects(I)Z

    move-result v11

    if-nez v11, :cond_3

    :cond_2
    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mappingIds:Landroid/util/SparseIntArray;

    invoke-virtual {v11, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v9

    add-int/lit16 v11, v9, 0x102a

    sget v12, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->NO_OF_PRELOAD_GPU:I

    sub-int/2addr v11, v12

    add-int/lit8 v6, v11, 0x1

    move v2, v6

    :cond_3
    const/4 v3, 0x0

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbnails:Landroid/util/SparseArray;

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbnails:Landroid/util/SparseArray;

    invoke-virtual {v11, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-nez v3, :cond_5

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    if-eqz v8, :cond_6

    invoke-virtual {v8, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_6
    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbsParent:Landroid/view/ViewGroup;

    invoke-virtual {v11, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Landroid/view/View;->setSelected(Z)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_2

    :cond_7
    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbsParent:Landroid/view/ViewGroup;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mSelection:Landroid/view/View;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mGPUUniqueIds:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isPreloadedEffects(I)Z

    move-result v11

    if-nez v11, :cond_9

    :cond_8
    iget-object v12, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mappingIds:Landroid/util/SparseIntArray;

    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v12, v11}, Landroid/util/SparseIntArray;->get(I)I

    move-result v9

    add-int/lit16 v11, v9, 0x102a

    sget v12, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->NO_OF_PRELOAD_GPU:I

    sub-int/2addr v11, v12

    add-int/lit8 v5, v11, 0x1

    :cond_9
    const/4 v3, 0x0

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbnails:Landroid/util/SparseArray;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbnails:Landroid/util/SparseArray;

    invoke-virtual {v11, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_0

    const/4 v11, 0x1

    invoke-virtual {v3, v11}, Landroid/view/View;->setSelected(Z)V

    iget v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mServiceId:I

    const/16 v12, 0x1000

    if-eq v11, v12, :cond_b

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->isGPUFilterSupported:Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_a

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbnails:Landroid/util/SparseArray;

    const/16 v12, 0x1401

    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_a

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isOwner()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isSupportDownloadEffect()Z

    move-result v11

    if-eqz v11, :cond_a

    iget-object v12, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbsParent:Landroid/view/ViewGroup;

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbnails:Landroid/util/SparseArray;

    const/16 v13, 0x1401

    invoke-virtual {v11, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    invoke-virtual {v12, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_a
    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbnails:Landroid/util/SparseArray;

    const/16 v12, 0x1402

    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_b

    iget-object v12, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbsParent:Landroid/view/ViewGroup;

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbnails:Landroid/util/SparseArray;

    const/16 v13, 0x1402

    invoke-virtual {v11, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    invoke-virtual {v12, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_b
    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v11}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->getMainState()I

    move-result v11

    const/16 v12, 0x1000

    if-ne v11, v12, :cond_d

    iget v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mCurrState:I

    const/16 v12, 0x1000

    if-eq v11, v12, :cond_d

    iget v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mCurrIndex:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_d

    iget v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mCurrIndex:I

    sget-object v12, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->sEffectButtonOrder:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v11, v12, :cond_d

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v11}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0805f1

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iget v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mThumbLayoutWidth:I

    add-int/2addr v11, v10

    iget v12, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mCurrIndex:I

    mul-int/2addr v12, v11

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v11}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_f

    neg-int v11, v10

    :goto_3
    add-int v4, v12, v11

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mSelection:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    iget v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mServiceId:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_c

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v11}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_c

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mScrollView:Landroid/widget/HorizontalScrollView;

    const/16 v12, 0x42

    invoke-virtual {v11, v12}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    :cond_c
    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v11}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_13

    iget v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mServiceId:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_12

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->isGPUFilterSupported:Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-nez v11, :cond_10

    iget v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mThumbLayoutWidth:I

    add-int/2addr v11, v10

    sget-object v12, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->sEffectButtonOrder:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    mul-int/2addr v11, v12

    sub-int/2addr v11, v4

    iput v11, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    :goto_4
    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mSelection:Landroid/view/View;

    invoke-virtual {v11, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_d
    iget-boolean v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mIsThumbsLoaded:Z

    if-nez v11, :cond_e

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isMassModel()Z

    move-result v11

    if-eqz v11, :cond_e

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mIsThumbsLoaded:Z

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    iget-object v12, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v12}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->getState()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->updateBottomButtons(I)V

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mSelection:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v11}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_17

    iget v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mServiceId:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_16

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->isGPUFilterSupported:Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-nez v11, :cond_14

    iget v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mThumbLayoutWidth:I

    sget-object v12, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->sEffectButtonOrder:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    mul-int/2addr v11, v12

    iput v11, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    :goto_5
    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mSelection:Landroid/view/View;

    invoke-virtual {v11, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_e
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mIsThumbsLoaded:Z

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    const/16 v12, 0x1000

    sget-object v13, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v11, v12, v13}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->sendResponseToExecutor(ILcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_f
    move v11, v10

    goto/16 :goto_3

    :cond_10
    iget v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mThumbLayoutWidth:I

    add-int v12, v11, v10

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isSupportDownloadEffect()Z

    move-result v11

    if-eqz v11, :cond_11

    sget-object v11, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->sEffectButtonOrder:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    :goto_6
    mul-int/2addr v11, v12

    sub-int/2addr v11, v4

    iput v11, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_4

    :cond_11
    sget-object v11, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->sEffectButtonOrder:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    goto :goto_6

    :cond_12
    iget v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mThumbLayoutWidth:I

    add-int/2addr v11, v10

    sget-object v12, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->sEffectButtonOrder:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    mul-int/2addr v11, v12

    sub-int/2addr v11, v4

    iput v11, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_4

    :cond_13
    iput v4, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_4

    :cond_14
    iget v12, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mThumbLayoutWidth:I

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isSupportDownloadEffect()Z

    move-result v11

    if-eqz v11, :cond_15

    sget-object v11, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->sEffectButtonOrder:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    :goto_7
    mul-int/2addr v11, v12

    iput v11, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_5

    :cond_15
    sget-object v11, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->sEffectButtonOrder:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    goto :goto_7

    :cond_16
    iget v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mThumbLayoutWidth:I

    sget-object v12, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->sEffectButtonOrder:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    mul-int/2addr v11, v12

    iput v11, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_5

    :cond_17
    const/4 v11, 0x0

    iput v11, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_5
.end method

.method public releaseSecIns()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mSecImaging:Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mSecImaging:Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;

    const-string v2, " EFFETCS"

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->releaseSecImaging(Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, " EFFETCS "

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getNewSecImagingInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mSecImaging:Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->recreateSecImaging(Landroid/content/Context;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public releaseTask()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mLoaderTask:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mLoaderTask:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->cancel(Z)Z

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mLoaderTask:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->cpuThumbloader:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$CPUThumbReloader;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->cpuThumbloader:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$CPUThumbReloader;

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$CPUThumbReloader;->cancel(Z)Z

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->cpuThumbloader:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$CPUThumbReloader;

    :cond_1
    return-void
.end method

.method public reload()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$6;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$6;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public reloadGPUThumbs()V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->gpuloader:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;

    if-nez v4, :cond_0

    new-instance v4, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mSecImaging:Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;

    invoke-direct {v4, v5, v6, v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;-><init>(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;)V

    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->gpuloader:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->gpuloader:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->registerGPUFilterChangeListener()V

    :cond_0
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->gpuloader:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->getExternalEffectCount()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->gpuloader:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->getIDs()Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mGPUUniqueIds:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mGPURefIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->gpuloader:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->getGPUTitleNames()Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mGpuEffectTitle:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->gpuloader:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->getGPUEffectNames()Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mGpuEffectNames:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->gpuloader:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->getVendorandEffectNames()Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mGpuVendornames:Ljava/util/ArrayList;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mGPURefIds:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mGPUUniqueIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mGPURefIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mappingIds:Landroid/util/SparseIntArray;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mGPUUniqueIds:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mGPURefIds:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, v6, v4}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mappingIds:Landroid/util/SparseIntArray;

    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->setMappingIds(Landroid/util/SparseIntArray;)V

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mGPUEffectCount:I

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mGPUUniqueIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->gpuIDs:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->newIds:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->deletedIds:Ljava/util/ArrayList;

    sget v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->NO_OF_PRELOAD_GPU:I

    :goto_2
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mGPUUniqueIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mGPUUniqueIds:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->isIDinPref(I)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->newIds:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->newIds:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->insert(Ljava/util/ArrayList;)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->newIds:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->insertRow(Ljava/util/ArrayList;)V

    sget v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->NO_OF_PRELOAD_GPU:I

    :goto_3
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mBackupIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_6

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mGPUUniqueIds:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mBackupIds:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mBackupIds:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->deletedIds:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mappingIds:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseIntArray;->delete(I)V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->deletedIds:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->delete(Ljava/util/ArrayList;)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->deletedIds:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->deleteRow(Ljava/util/ArrayList;)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mGPUUniqueIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mBackupIds:Ljava/util/ArrayList;

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->isLanguageChanged:Z

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    new-instance v5, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$7;

    invoke-direct {v5, p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$7;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public reloadOnlangChange(Z)V
    .locals 5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Effects::reloadOnlangChange = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->findCaller(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->l(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->gpuloader:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->isLanguageChanged:Z

    iget-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->isLanguageChanged:Z

    if-eqz v3, :cond_4

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->gpuloader:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->getGPUTitleNames()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mGpuEffectTitle:Ljava/util/ArrayList;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->getMainState()I

    move-result v3

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mCurrState:I

    invoke-direct {p0, v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->getEffectTitleNames(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setSeekTitle(Ljava/lang/String;)V

    :cond_2
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mLoaderTask:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mLoaderTask:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->cancel(Z)Z

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mLoaderTask:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;

    :cond_3
    new-instance v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;

    invoke-direct {v3, p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)V

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mLoaderTask:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mLoaderTask:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_4
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mPreview:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mLabelTextures()V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mPreview:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->updateTextPreview()V

    const/4 v1, 0x0

    :goto_1
    const/4 v3, 0x5

    if-ge v1, v3, :cond_7

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mCurrIndex:I

    add-int/2addr v3, v1

    add-int/lit8 v2, v3, -0x2

    if-ltz v2, :cond_5

    sget-object v3, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->sEffectButtonOrder:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    sget-object v3, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->sEffectButtonOrder:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isCPUEffects(I)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isPreloadedEffects(I)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mappingIds:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_6

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mappingIds:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mGpuEffectNames:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mPreview:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mGpuEffectTitle:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v1, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->updateLabel(ILjava/lang/String;)V

    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :cond_6
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mPreview:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;

    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->getEffectTitleNames(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->updateLabel(ILjava/lang/String;)V

    goto :goto_2

    :cond_7
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    goto/16 :goto_0
.end method

.method public reloadTextAndSeekColor()V
    .locals 13

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v10

    const/4 v8, 0x0

    :goto_0
    const/4 v0, 0x5

    if-ge v8, v0, :cond_6

    rem-int/lit8 v0, v8, 0x2

    if-nez v0, :cond_1

    const/4 v0, -0x1

    :goto_1
    add-int/lit8 v2, v8, 0x1

    div-int/lit8 v2, v2, 0x2

    mul-int/2addr v0, v2

    add-int/lit8 v9, v0, 0x2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectCache:[Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;

    aget-object v11, v0, v9

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mCurrIndex:I

    invoke-virtual {v11}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->getId()I

    move-result v2

    add-int/2addr v0, v2

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mCurrIndex:I

    invoke-virtual {v11}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->getId()I

    move-result v2

    add-int/2addr v0, v2

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->sEffectButtonOrder:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_2

    :cond_0
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mCurrIndex:I

    invoke-virtual {v11}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->getId()I

    move-result v2

    add-int v12, v0, v2

    :try_start_0
    invoke-virtual {v11}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->getData()[I

    move-result-object v1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v10}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v2

    invoke-virtual {v10}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->calculateSeekbarColor([III)I

    move-result v0

    invoke-virtual {v11, v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->setColor(I)V

    if-eqz v1, :cond_0

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->sEffectButtonOrder:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isCPUEffects(I)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isPreloadedEffects(I)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mappingIds:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mappingIds:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v9

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v10}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v2

    invoke-virtual {v10}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getWidth()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mPreview:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->getTextZoneHeight()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->updateTextPreview([IIIII)I

    move-result v6

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mPreview:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;

    invoke-virtual {v0, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->updateTextColor(I)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mPreview:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;

    invoke-virtual {v11}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->getId()I

    move-result v0

    add-int/lit8 v3, v0, 0x2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mGpuEffectTitle:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->onCacheUpdated(ILjava/lang/String;)V

    :cond_3
    :goto_3
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mCurrIndex:I

    if-ne v12, v0, :cond_0

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mCurrEffect:I

    const/16 v2, 0x1001

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectCache:[Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->getColor()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->sendSeekbarColor(I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v7

    const-string v0, "PEDIT_Effects"

    invoke-virtual {v7}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_4
    :try_start_1
    invoke-static {v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isCPUEffects(I)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isPreloadedEffects(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_5
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v10}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v2

    invoke-virtual {v10}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getWidth()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mPreview:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->getTextZoneHeight()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->updateTextPreview([IIIII)I

    move-result v6

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mPreview:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;

    invoke-virtual {v0, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->updateTextColor(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mPreview:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;

    invoke-virtual {v11}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->getId()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-direct {p0, v9}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->getEffectTitleNames(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->onCacheUpdated(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :cond_6
    return-void
.end method

.method public removePrevEffect()V
    .locals 6

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewOutputBuffer()[I

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v3

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewOutputBuffer()[I

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v3

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getCurrLayer()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->setImageData([IIII)V

    return-void
.end method

.method public resetIndex()V
    .locals 3

    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mCurrIndex:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mSelection:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mSelection:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mSelection:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mSelection:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method

.method public scrollOnLanguageChange()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mScrollView:Landroid/widget/HorizontalScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mScrollView:Landroid/widget/HorizontalScrollView;

    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mScrollView:Landroid/widget/HorizontalScrollView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    goto :goto_0
.end method

.method public sendMessageUpdateSeekbar()V
    .locals 4

    const/16 v2, 0xff

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mHandlerMain:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput v2, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mHandlerMain:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public setPreviewView(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mPreview:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->setPreviewView(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;)V

    return-void
.end method

.method public setScrollClickListener([I)V
    .locals 10

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v4

    aget v5, p1, v8

    int-to-float v2, v5

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0804bf

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int/lit8 v3, v5, 0x1

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mScrollView:Landroid/widget/HorizontalScrollView;

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v5}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v5

    mul-int/lit8 v6, v3, 0x2

    int-to-float v6, v6

    add-float/2addr v6, v2

    float-to-int v6, v6

    add-int v0, v5, v6

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbsParent:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbsParent:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    sub-int/2addr v5, v0

    mul-int/lit8 v6, v3, 0x2

    add-int/lit8 v6, v6, -0x2

    if-ge v5, v6, :cond_2

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mScrollView:Landroid/widget/HorizontalScrollView;

    const/16 v6, 0x42

    invoke-virtual {v5, v6}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    goto :goto_0

    :cond_2
    mul-int/lit8 v5, v3, 0x2

    int-to-float v5, v5

    add-float/2addr v5, v2

    int-to-float v6, v4

    cmpl-float v5, v5, v6

    if-lez v5, :cond_3

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mScrollView:Landroid/widget/HorizontalScrollView;

    mul-int/lit8 v6, v3, 0x2

    int-to-float v6, v6

    add-float/2addr v6, v2

    int-to-float v7, v4

    sub-float/2addr v6, v7

    add-float/2addr v6, v9

    float-to-int v6, v6

    invoke-virtual {v5, v6, v8}, Landroid/widget/HorizontalScrollView;->smoothScrollBy(II)V

    goto :goto_0

    :cond_3
    int-to-float v5, v3

    sub-float v5, v2, v5

    cmpg-float v5, v5, v7

    if-gez v5, :cond_0

    cmpg-float v5, v2, v7

    if-gez v5, :cond_4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mScrollView:Landroid/widget/HorizontalScrollView;

    int-to-float v6, v3

    sub-float v6, v2, v6

    sub-float/2addr v6, v9

    float-to-int v6, v6

    invoke-virtual {v5, v6, v8}, Landroid/widget/HorizontalScrollView;->smoothScrollBy(II)V

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mScrollView:Landroid/widget/HorizontalScrollView;

    int-to-float v6, v3

    sub-float v6, v2, v6

    float-to-int v6, v6

    invoke-virtual {v5, v6, v8}, Landroid/widget/HorizontalScrollView;->smoothScrollBy(II)V

    goto :goto_0
.end method

.method public setServiceId(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mServiceId:I

    return-void
.end method

.method public setSubModeEffect(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->findIdFromExecutor(Ljava/lang/String;)I

    move-result v1

    and-int/lit16 v2, v1, -0x100

    const/16 v3, 0x1000

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v2, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setState(I)V

    const/4 v2, 0x2

    new-array v0, v2, [I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbnails:Landroid/util/SparseArray;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbnails:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbnails:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationInWindow([I)V

    :cond_0
    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->setScrollClickListener([I)V

    :cond_1
    return-void
.end method

.method updateEffectSubButtonLayout()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mSelection:Landroid/view/View;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mSelection:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020735

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mSelection:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbsParent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v13

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v13, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbsParent:Landroid/view/ViewGroup;

    invoke-virtual {v1, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    if-eqz v17, :cond_2

    const v1, 0x7f0e025d

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0804bf

    const v4, 0x7f0804be

    const v5, 0x7f0805f1

    const/4 v6, 0x0

    const v7, 0x7f0805f1

    const v8, 0x7f0805f1

    invoke-static/range {v1 .. v8}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateLinearLayoutParamsForView(Landroid/content/Context;Landroid/view/View;IIIIII)V

    const v1, 0x7f0e0260

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    if-eqz v15, :cond_1

    invoke-virtual {v15}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f080602

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    move-object/from16 v0, v16

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f080602

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    move-object/from16 v0, v16

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    :cond_1
    const v1, 0x7f0e025f

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    :goto_2
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v3, -0x2

    invoke-direct {v12, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0804bf

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v12, Landroid/widget/FrameLayout$LayoutParams;->width:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f080586

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v12, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/16 v1, 0x50

    iput v1, v12, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080587

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v14, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v14, v12}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f0804bf

    const v6, 0x7f0804be

    const v7, 0x7f0805f1

    const/4 v8, 0x0

    const v9, 0x7f0805f1

    const v10, 0x7f0805f1

    invoke-static/range {v3 .. v10}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateLinearLayoutParams(Landroid/content/Context;IIIIIII)V

    const v1, 0x7f0e0252

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    goto :goto_2

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->updateSubButtonEffectSelection()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->updateSubButtonDownLoadandManager()V

    goto/16 :goto_0
.end method

.method public updatePreferenceIfChange(Ljava/util/ArrayList;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v13, 0x0

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v11}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "effect"

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    iput-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mPref:Landroid/content/SharedPreferences;

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mPref:Landroid/content/SharedPreferences;

    const-string v12, "effects_data"

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v8

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    :goto_0
    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mJSONIds:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v3, v11, :cond_2

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mJSONIds:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mOrginalPrefIds:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    move v7, v6

    :goto_1
    if-ge v7, v8, :cond_3

    add-int/lit8 v6, v7, 0x1

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->getInt(I)I

    move-result v11

    if-ne v4, v11, :cond_0

    invoke-virtual {v9, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move v7, v6

    goto :goto_1

    :cond_1
    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->put(Z)Lorg/json/JSONArray;

    invoke-virtual {v9, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_3
    return-void

    :cond_2
    :try_start_1
    const-string v11, "effects_data"

    invoke-virtual {v9}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v2, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :cond_3
    move v6, v7

    goto :goto_2
.end method

.method public updatePreferences()V
    .locals 9

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "effect"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mPref:Landroid/content/SharedPreferences;

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/16 v6, 0x1000

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->getSubButtonOrderForEffects(ILandroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_2

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    add-int/lit16 v7, v3, 0x102a

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mGPUUniqueIds:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sget v7, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->NO_OF_PRELOAD_GPU:I

    if-le v6, v7, :cond_0

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mGPUUniqueIds:Ljava/util/ArrayList;

    sget v7, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->NO_OF_PRELOAD_GPU:I

    add-int/2addr v7, v3

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    :cond_0
    :goto_1
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->put(Z)Lorg/json/JSONArray;

    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_2
    const-string v6, "effects_data"

    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public updateSEffectOrder()V
    .locals 12

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mPref:Landroid/content/SharedPreferences;

    const-string v10, "effects_data"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v7

    const/4 v5, 0x0

    sget-object v9, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->sEffectButtonOrder:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    move v6, v5

    :goto_0
    if-ge v6, v7, :cond_1

    add-int/lit8 v5, v6, 0x1

    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v9, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->sEffectButtonOrder:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    sget-object v9, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->sEffectButtonOrder:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    move v6, v5

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    return-void
.end method

.method updateSubButtonDownLoadandManager()V
    .locals 14

    const v13, 0x7f0e0252

    const v12, 0x7f0e0064

    const v11, 0x7f0c0002

    const v10, 0x7f080268

    const v9, 0x7f0805f0

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbsParent:Landroid/view/ViewGroup;

    const v8, 0x7f0e025a

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v12}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v3, v9, v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateViewGroupParamsForView(Landroid/content/Context;Landroid/view/View;II)V

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {v1, v13}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbsParent:Landroid/view/ViewGroup;

    const v8, 0x7f0e0259

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v12}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v2, v9, v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateViewGroupParamsForView(Landroid/content/Context;Landroid/view/View;II)V

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, v13}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method updateSubButtonEffectSelection()V
    .locals 8

    const v7, 0x7f0804bf

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0805f1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mSelection:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0804be

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mThumbLayoutWidth:I

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectThumbsParent:Landroid/view/ViewGroup;

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mCurrIndex:I

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mThumbLayoutWidth:I

    add-int/2addr v5, v3

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mCurrIndex:I

    mul-int/2addr v6, v5

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    neg-int v5, v3

    :goto_0
    add-int v1, v6, v5

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mServiceId:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->isGPUFilterSupported:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_1

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mThumbLayoutWidth:I

    add-int/2addr v5, v3

    sget-object v6, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->sEffectButtonOrder:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    mul-int/2addr v5, v6

    sub-int/2addr v5, v1

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    :goto_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mSelection:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    const v5, 0x7f02026f

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mSelection:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mSelection:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    move v5, v3

    goto :goto_0

    :cond_1
    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mThumbLayoutWidth:I

    add-int v6, v5, v3

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isSupportDownloadEffect()Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->sEffectButtonOrder:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    :goto_2
    mul-int/2addr v5, v6

    sub-int/2addr v5, v1

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_1

    :cond_2
    sget-object v5, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->sEffectButtonOrder:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    goto :goto_2

    :cond_3
    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mThumbLayoutWidth:I

    add-int/2addr v5, v3

    sget-object v6, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->sEffectButtonOrder:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    mul-int/2addr v5, v6

    sub-int/2addr v5, v1

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_1

    :cond_4
    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_1
.end method
