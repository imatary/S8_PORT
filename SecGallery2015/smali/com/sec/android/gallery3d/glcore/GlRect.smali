.class public Lcom/sec/android/gallery3d/glcore/GlRect;
.super Ljava/lang/Object;
.source "GlRect.java"


# instance fields
.field public mHeight:I

.field public mLeft:I

.field public mTop:I

.field public mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setPos(II)V
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/glcore/GlRect;->mLeft:I

    iput p2, p0, Lcom/sec/android/gallery3d/glcore/GlRect;->mTop:I

    return-void
.end method

.method public setSize(II)V
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/glcore/GlRect;->mWidth:I

    iput p2, p0, Lcom/sec/android/gallery3d/glcore/GlRect;->mHeight:I

    return-void
.end method
