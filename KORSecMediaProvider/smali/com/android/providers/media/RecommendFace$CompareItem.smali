.class public Lcom/android/providers/media/RecommendFace$CompareItem;
.super Ljava/lang/Object;
.source "RecommendFace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/RecommendFace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompareItem"
.end annotation


# instance fields
.field public mId:I

.field public mScore:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/providers/media/RecommendFace$CompareItem;->mId:I

    iput v0, p0, Lcom/android/providers/media/RecommendFace$CompareItem;->mScore:I

    return-void
.end method
