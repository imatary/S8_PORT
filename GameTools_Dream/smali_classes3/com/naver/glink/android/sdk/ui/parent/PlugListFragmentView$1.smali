.class Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView$1;
.super Ljava/lang/Object;
.source "PlugListFragmentView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView$1;->a:Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView$1;->a:Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView;

    move-object v1, p1

    check-cast v1, Landroid/widget/ListView;

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView;->a(Landroid/widget/ListView;Landroid/view/View;IJ)V

    return-void
.end method
