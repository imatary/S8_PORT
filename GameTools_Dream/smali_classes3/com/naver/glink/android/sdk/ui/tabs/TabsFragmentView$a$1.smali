.class Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView$a$1;
.super Ljava/lang/Object;
.source "TabsFragmentView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView$a;->a(Lcom/naver/glink/android/sdk/ui/tabs/Tab;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/tabs/Tab;

.field final synthetic b:Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView$a;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView$a;Lcom/naver/glink/android/sdk/ui/tabs/Tab;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView$a$1;->b:Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView$a;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView$a$1;->a:Lcom/naver/glink/android/sdk/ui/tabs/Tab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView$a$1;->b:Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView$a;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView$a;->e:Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView$a$1;->a:Lcom/naver/glink/android/sdk/ui/tabs/Tab;

    iget-object v1, v1, Lcom/naver/glink/android/sdk/ui/tabs/Tab;->a:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;->a(Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;)V

    return-void
.end method
