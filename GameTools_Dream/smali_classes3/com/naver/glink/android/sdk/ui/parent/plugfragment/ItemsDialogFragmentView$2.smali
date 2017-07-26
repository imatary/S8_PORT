.class final Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView$2;
.super Ljava/lang/Object;
.source "ItemsDialogFragmentView.java"

# interfaces
.implements Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView$2;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView$a;)V
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView$2;->a:Ljava/util/List;

    iget v1, p1, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView$a;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/util/Pair;

    iget-object v1, v0, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v0, v0, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
