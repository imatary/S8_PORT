.class Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$4;
.super Ljava/lang/Object;
.source "ProfileModifyDialogFragmentView.java"

# interfaces
.implements Lcom/naver/glink/android/sdk/ui/write/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->a(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$4;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;)V
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$4;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$4;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;

    invoke-virtual {v1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/naver/glink/android/sdk/a/d;->a(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->a(Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;Ljava/lang/String;)V

    return-void
.end method
