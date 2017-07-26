.class Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$14;
.super Ljava/lang/Object;
.source "WriteFragmentView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->a(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/activityresult/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$14;->a:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$14;->a:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$14;->a:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    invoke-virtual {v1}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/naver/glink/android/sdk/R$string;->movie_over_limit_size_message:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
