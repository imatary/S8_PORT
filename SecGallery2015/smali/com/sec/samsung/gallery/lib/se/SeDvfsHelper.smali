.class public Lcom/sec/samsung/gallery/lib/se/SeDvfsHelper;
.super Ljava/lang/Object;
.source "SeDvfsHelper.java"

# interfaces
.implements Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;


# static fields
.field public static final ACTION_GALLERY_TOUCH:Ljava/lang/String; = "GALLERY_TOUCH"

.field public static final ACTION_GALLERY_TOUCH_TAIL:Ljava/lang/String; = "GALLERY_TOUCH_TAIL"

.field public static final ACTION_LISTVIEW_SCROLL:Ljava/lang/String; = "GALLERY_SCROLL"

.field public static final LIST_SCROLL_BOOSTER_CORE_NUM:I = 0x0

.field public static final TYPE_BUS_MIN:I = 0x13

.field public static final TYPE_CPU_CORE_NUM_MIN:I = 0xe

.field public static final TYPE_CPU_MIN:I = 0xc

.field public static final TYPE_GPU_MIN:I = 0x10

.field public static final TYPE_HINT:I = 0x15


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mSemDvfsManager:Lcom/samsung/android/os/SemDvfsManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/lib/se/SeDvfsHelper;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public acquire()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SeDvfsHelper;->mSemDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SeDvfsHelper;->mSemDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    :cond_0
    return-void
.end method

.method public acquire(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SeDvfsHelper;->mSemDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SeDvfsHelper;->mSemDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V

    :cond_0
    return-void
.end method

.method public acquire(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SeDvfsHelper;->mSemDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SeDvfsHelper;->mSemDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    :cond_0
    return-void
.end method

.method public addExtraOption(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SeDvfsHelper;->mSemDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SeDvfsHelper;->mSemDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SeDvfsHelper;->mSemDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v0, p2}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    :cond_0
    return-void
.end method

.method public addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SeDvfsHelper;->mSemDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SeDvfsHelper;->mSemDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public cancelExtraOptions()V
    .locals 0

    return-void
.end method

.method public createInstance(Ljava/lang/String;IJ)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SeDvfsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SeDvfsHelper;->mSemDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    return-void
.end method

.method public getApproximateFrequency(I)I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SeDvfsHelper;->mSemDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SeDvfsHelper;->mSemDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequency(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getApproximateFrequencyByPercentOfMaximum(D)I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SeDvfsHelper;->mSemDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SeDvfsHelper;->mSemDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyByPercent(D)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSupportedCoreNum()[I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/lib/se/SeDvfsHelper;->getSupportedFrequency()[I

    move-result-object v0

    return-object v0
.end method

.method public getSupportedFrequency()[I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SeDvfsHelper;->mSemDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SeDvfsHelper;->mSemDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->getSupportedFrequency()[I

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SeDvfsHelper;->mSemDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SeDvfsHelper;->mSemDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    :cond_0
    return-void
.end method
