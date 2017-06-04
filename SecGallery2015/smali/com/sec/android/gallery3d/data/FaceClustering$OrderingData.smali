.class Lcom/sec/android/gallery3d/data/FaceClustering$OrderingData;
.super Ljava/lang/Object;
.source "FaceClustering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/data/FaceClustering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OrderingData"
.end annotation


# instance fields
.field public final date:J

.field public final personId:I

.field public final recommendedId:I


# direct methods
.method public constructor <init>(JII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/sec/android/gallery3d/data/FaceClustering$OrderingData;->date:J

    iput p3, p0, Lcom/sec/android/gallery3d/data/FaceClustering$OrderingData;->recommendedId:I

    iput p4, p0, Lcom/sec/android/gallery3d/data/FaceClustering$OrderingData;->personId:I

    return-void
.end method
