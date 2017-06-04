.class public Lcom/sec/samsung/gallery/lib/se/SeHorizontalListViewSmsMember;
.super Ljava/lang/Object;
.source "SeHorizontalListViewSmsMember.java"

# interfaces
.implements Lcom/sec/samsung/gallery/lib/libinterface/HorizontalListViewSmsMemberInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addView(Landroid/widget/LinearLayout;Landroid/content/Context;Landroid/widget/ArrayAdapter;I)V
    .locals 3

    new-instance v1, Landroid/widget/SemHorizontalListView;

    invoke-direct {v1, p2}, Landroid/widget/SemHorizontalListView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, p4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/widget/SemHorizontalListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, p3}, Landroid/widget/SemHorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method
