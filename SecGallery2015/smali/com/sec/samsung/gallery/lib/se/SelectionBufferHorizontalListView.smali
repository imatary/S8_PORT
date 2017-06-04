.class public Lcom/sec/samsung/gallery/lib/se/SelectionBufferHorizontalListView;
.super Landroid/widget/SemHorizontalListView;
.source "SelectionBufferHorizontalListView.java"


# instance fields
.field final mAddDeleteListAnimator:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalListView;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    invoke-direct {v0, p1, p0}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;-><init>(Landroid/content/Context;Landroid/widget/SemHorizontalListView;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SelectionBufferHorizontalListView;->mAddDeleteListAnimator:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/SemHorizontalListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    invoke-direct {v0, p1, p0}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;-><init>(Landroid/content/Context;Landroid/widget/SemHorizontalListView;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SelectionBufferHorizontalListView;->mAddDeleteListAnimator:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SemHorizontalListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    invoke-direct {v0, p1, p0}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;-><init>(Landroid/content/Context;Landroid/widget/SemHorizontalListView;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SelectionBufferHorizontalListView;->mAddDeleteListAnimator:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    return-void
.end method
