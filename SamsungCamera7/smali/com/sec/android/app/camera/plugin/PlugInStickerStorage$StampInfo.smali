.class public Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StampInfo;
.super Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerInfo;
.source "PlugInStickerStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StampInfo"
.end annotation


# instance fields
.field public final previewResourceHeight:I

.field public final previewResourceWidth:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIII)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerInfo;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    iput p4, p0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StampInfo;->previewResourceWidth:I

    iput p5, p0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StampInfo;->previewResourceHeight:I

    return-void
.end method
