.class public abstract Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerInfo;
.super Ljava/lang/Object;
.source "PlugInStickerStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "StickerInfo"
.end annotation


# instance fields
.field public final commandId:I

.field public final packageName:Ljava/lang/String;

.field public final stickerName:Ljava/lang/String;

.field public final subOrder:I

.field public final thumbnailResourceId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerInfo;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerInfo;->stickerName:Ljava/lang/String;

    iput p3, p0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerInfo;->thumbnailResourceId:I

    iput p4, p0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerInfo;->subOrder:I

    iput p5, p0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerInfo;->commandId:I

    return-void
.end method
