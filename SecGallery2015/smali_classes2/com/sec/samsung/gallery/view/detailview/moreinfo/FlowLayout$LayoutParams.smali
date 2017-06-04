.class public Lcom/sec/samsung/gallery/view/detailview/moreinfo/FlowLayout$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "FlowLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/detailview/moreinfo/FlowLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public final mHorizontal_spacing:I

.field public final mIsAddBtn:Z

.field public final mVertical_spacing:I


# direct methods
.method public constructor <init>(IIZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iput p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/FlowLayout$LayoutParams;->mHorizontal_spacing:I

    iput p2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/FlowLayout$LayoutParams;->mVertical_spacing:I

    iput-boolean p3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/FlowLayout$LayoutParams;->mIsAddBtn:Z

    return-void
.end method
