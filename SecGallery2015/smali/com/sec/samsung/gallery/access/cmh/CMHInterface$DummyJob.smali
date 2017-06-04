.class public Lcom/sec/samsung/gallery/access/cmh/CMHInterface$DummyJob;
.super Ljava/lang/Object;
.source "CMHInterface.java"

# interfaces
.implements Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/access/cmh/CMHInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DummyJob"
.end annotation


# instance fields
.field mMode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$DummyJob;->mMode:I

    return-void
.end method


# virtual methods
.method public getMode()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$DummyJob;->mMode:I

    return v0
.end method

.method public isCancelled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setCancelListener(Lcom/sec/android/gallery3d/util/ThreadPool$CancelListener;)V
    .locals 0

    return-void
.end method

.method public setMode(I)Z
    .locals 1

    iput p1, p0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$DummyJob;->mMode:I

    const/4 v0, 0x1

    return v0
.end method
