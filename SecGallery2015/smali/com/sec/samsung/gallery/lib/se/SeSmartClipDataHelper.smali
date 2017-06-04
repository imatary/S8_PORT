.class public Lcom/sec/samsung/gallery/lib/se/SeSmartClipDataHelper;
.super Ljava/lang/Object;
.source "SeSmartClipDataHelper.java"

# interfaces
.implements Lcom/sec/samsung/gallery/lib/libinterface/SmartClipDataHelperInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "SeSmartClipDataHelper"


# instance fields
.field private mDataListener:Lcom/sec/samsung/gallery/lib/libinterface/SmartClipDataHelperInterface$onClipDataListener;

.field private mDataListenerForDetailView:Lcom/sec/samsung/gallery/lib/libinterface/SmartClipDataHelperInterface$onClipDataListenerForDetailView;

.field private mSmartClipDataExtractionListener:Lcom/samsung/android/content/smartclip/SemSmartClipDataExtractionListener;

.field private mSmartClipDataExtractionListenerForDetailView:Lcom/samsung/android/content/smartclip/SemSmartClipDataExtractionListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/lib/se/SeSmartClipDataHelper;)Lcom/sec/samsung/gallery/lib/libinterface/SmartClipDataHelperInterface$onClipDataListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SeSmartClipDataHelper;->mDataListener:Lcom/sec/samsung/gallery/lib/libinterface/SmartClipDataHelperInterface$onClipDataListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/lib/se/SeSmartClipDataHelper;)Lcom/sec/samsung/gallery/lib/libinterface/SmartClipDataHelperInterface$onClipDataListenerForDetailView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SeSmartClipDataHelper;->mDataListenerForDetailView:Lcom/sec/samsung/gallery/lib/libinterface/SmartClipDataHelperInterface$onClipDataListenerForDetailView;

    return-object v0
.end method

.method private getExtractionListener()Lcom/samsung/android/content/smartclip/SemSmartClipDataExtractionListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SeSmartClipDataHelper;->mSmartClipDataExtractionListener:Lcom/samsung/android/content/smartclip/SemSmartClipDataExtractionListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/lib/se/SeSmartClipDataHelper$1;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/lib/se/SeSmartClipDataHelper$1;-><init>(Lcom/sec/samsung/gallery/lib/se/SeSmartClipDataHelper;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SeSmartClipDataHelper;->mSmartClipDataExtractionListener:Lcom/samsung/android/content/smartclip/SemSmartClipDataExtractionListener;

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SeSmartClipDataHelper;->mSmartClipDataExtractionListener:Lcom/samsung/android/content/smartclip/SemSmartClipDataExtractionListener;

    return-object v0
.end method

.method private getExtractionListenerForDetailView()Lcom/samsung/android/content/smartclip/SemSmartClipDataExtractionListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SeSmartClipDataHelper;->mSmartClipDataExtractionListenerForDetailView:Lcom/samsung/android/content/smartclip/SemSmartClipDataExtractionListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/lib/se/SeSmartClipDataHelper$2;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/lib/se/SeSmartClipDataHelper$2;-><init>(Lcom/sec/samsung/gallery/lib/se/SeSmartClipDataHelper;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SeSmartClipDataHelper;->mSmartClipDataExtractionListenerForDetailView:Lcom/samsung/android/content/smartclip/SemSmartClipDataExtractionListener;

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SeSmartClipDataHelper;->mSmartClipDataExtractionListenerForDetailView:Lcom/samsung/android/content/smartclip/SemSmartClipDataExtractionListener;

    return-object v0
.end method


# virtual methods
.method public setDataExtractionListener(Landroid/view/View;Z)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/lib/se/SeSmartClipDataHelper;->getExtractionListenerForDetailView()Lcom/samsung/android/content/smartclip/SemSmartClipDataExtractionListener;

    move-result-object v0

    :goto_0
    invoke-static {p1, v0}, Lcom/samsung/android/content/smartclip/SemSmartClipViewHelper;->setDataExtractionListener(Landroid/view/View;Lcom/samsung/android/content/smartclip/SemSmartClipDataExtractionListener;)Z

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/lib/se/SeSmartClipDataHelper;->getExtractionListener()Lcom/samsung/android/content/smartclip/SemSmartClipDataExtractionListener;

    move-result-object v0

    goto :goto_0
.end method

.method public setOnClipDataListener(Lcom/sec/samsung/gallery/lib/libinterface/SmartClipDataHelperInterface$onClipDataListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/lib/se/SeSmartClipDataHelper;->mDataListener:Lcom/sec/samsung/gallery/lib/libinterface/SmartClipDataHelperInterface$onClipDataListener;

    return-void
.end method

.method public setOnClipDataListener(Lcom/sec/samsung/gallery/lib/libinterface/SmartClipDataHelperInterface$onClipDataListenerForDetailView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/lib/se/SeSmartClipDataHelper;->mDataListenerForDetailView:Lcom/sec/samsung/gallery/lib/libinterface/SmartClipDataHelperInterface$onClipDataListenerForDetailView;

    return-void
.end method
