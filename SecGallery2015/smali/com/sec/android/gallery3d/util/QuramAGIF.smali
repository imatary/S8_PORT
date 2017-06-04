.class public Lcom/sec/android/gallery3d/util/QuramAGIF;
.super Ljava/lang/Object;
.source "QuramAGIF.java"


# instance fields
.field private final mQURAMWINKUTIL:Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->create()Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/util/QuramAGIF;->mQURAMWINKUTIL:Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;

    return-void
.end method


# virtual methods
.method public getQURAMWINKUTIL()Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/util/QuramAGIF;->mQURAMWINKUTIL:Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;

    return-object v0
.end method
