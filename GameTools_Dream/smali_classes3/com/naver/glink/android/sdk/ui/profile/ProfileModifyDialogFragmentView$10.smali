.class Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$10;
.super Ljava/lang/Object;
.source "ProfileModifyDialogFragmentView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->a(Landroid/view/View;Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$10;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$10;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->c()V

    :cond_0
    return-void
.end method
