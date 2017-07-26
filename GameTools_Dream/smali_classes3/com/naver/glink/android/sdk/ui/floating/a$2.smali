.class Lcom/naver/glink/android/sdk/ui/floating/a$2;
.super Ljava/lang/Object;
.source "FullWidgetDialog.java"

# interfaces
.implements Lcom/github/clans/fab/AbsFloatingActionMenu$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/floating/a;->d(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/floating/a;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/floating/a;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/floating/a$2;->a:Lcom/naver/glink/android/sdk/ui/floating/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/a$2;->a:Lcom/naver/glink/android/sdk/ui/floating/a;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/floating/a;->dismiss()V

    :cond_0
    return-void
.end method
