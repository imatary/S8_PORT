.class Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b$1;
.super Ljava/lang/Object;
.source "ProfileArticlesFragmentView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->b(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b$a;

.field final synthetic b:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b$a;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b$1;->b:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b$1;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b$1;->b:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;

    const-string/jumbo v1, "W"

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->a(Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b$1;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b$a;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b$a;->a()V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b$1;->b:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;

    invoke-virtual {v0, v2, v2, v2}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->a(ZZZ)V

    return-void
.end method
