.class public Lcom/sec/android/secvision/segmentation/ScribblePoint;
.super Ljava/lang/Object;
.source "ScribblePoint.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final TAG:Ljava/lang/String; = "PEDIT_ScribblePoint"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public x:F

.field public y:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/android/secvision/segmentation/ScribblePoint;->x:F

    iput p2, p0, Lcom/sec/android/secvision/segmentation/ScribblePoint;->y:F

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/secvision/segmentation/ScribblePoint;->x:F

    iput v0, p0, Lcom/sec/android/secvision/segmentation/ScribblePoint;->y:F

    return-void
.end method
