.class public Lcom/sec/samsung/gallery/lib/se/SeHorizontalListViewMap;
.super Ljava/lang/Object;
.source "SeHorizontalListViewMap.java"

# interfaces
.implements Lcom/sec/samsung/gallery/lib/libinterface/HorizontalListViewMapInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addView(Landroid/widget/LinearLayout;Landroid/content/Context;Landroid/widget/BaseAdapter;ZLandroid/view/animation/Animation;II)V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    new-instance v0, Landroid/widget/SemHorizontalListView;

    invoke-direct {v0, p2}, Landroid/widget/SemHorizontalListView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, p6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/widget/SemHorizontalListView;->setClickable(Z)V

    invoke-virtual {v0, v3}, Landroid/widget/SemHorizontalListView;->setFocusable(Z)V

    invoke-virtual {v0, v3}, Landroid/widget/SemHorizontalListView;->setFocusableInTouchMode(Z)V

    invoke-virtual {v0, p3}, Landroid/widget/SemHorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v0, v3}, Landroid/widget/SemHorizontalListView;->setItemsCanFocus(Z)V

    invoke-virtual {v0, p7}, Landroid/widget/SemHorizontalListView;->setDividerHeight(I)V

    if-nez p4, :cond_0

    invoke-virtual {v0, p5}, Landroid/widget/SemHorizontalListView;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method
