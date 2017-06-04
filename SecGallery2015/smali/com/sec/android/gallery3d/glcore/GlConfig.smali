.class public Lcom/sec/android/gallery3d/glcore/GlConfig;
.super Ljava/lang/Object;
.source "GlConfig.java"


# instance fields
.field mHalfHeight:F

.field mHalfWidth:F

.field private mProspectMatix:[F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getProspectMatrix()[F
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlConfig;->mProspectMatix:[F

    return-object v0
.end method

.method public setProspectMatrix([F)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/glcore/GlConfig;->mProspectMatix:[F

    return-void
.end method

.method public setSize(FF)V
    .locals 2

    const/high16 v1, 0x40000000    # 2.0f

    div-float v0, p1, v1

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/GlConfig;->mHalfWidth:F

    div-float v0, p2, v1

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/GlConfig;->mHalfHeight:F

    return-void
.end method
