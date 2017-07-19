.class public Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;
.super Ljava/lang/Object;
.source "PlugInStickerStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StickerPackage"
.end annotation


# instance fields
.field public final commandId:I

.field public final isPreloaded:Z

.field public final mainOrder:I

.field public final packageName:Ljava/lang/String;

.field public final representativeNormalResourceId:I

.field public final representativePressedResourceId:I

.field private stickerList:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final stickerType:I


# direct methods
.method public constructor <init>(ILjava/lang/String;ZIIII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;->stickerList:Ljava/util/LinkedHashMap;

    iput p1, p0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;->stickerType:I

    iput-object p2, p0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;->packageName:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;->isPreloaded:Z

    iput p4, p0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;->representativeNormalResourceId:I

    iput p5, p0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;->representativePressedResourceId:I

    iput p6, p0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;->mainOrder:I

    iput p7, p0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;->commandId:I

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;)Ljava/util/LinkedHashMap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;->stickerList:Ljava/util/LinkedHashMap;

    return-object v0
.end method


# virtual methods
.method public addSticker(Ljava/lang/String;Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerInfo;)V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->access$100()Ljava/util/LinkedHashMap;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;->stickerList:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getStickerList()Ljava/util/LinkedHashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->access$100()Ljava/util/LinkedHashMap;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;->stickerList:Ljava/util/LinkedHashMap;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
