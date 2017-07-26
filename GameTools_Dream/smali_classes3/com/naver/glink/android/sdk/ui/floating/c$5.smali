.class Lcom/naver/glink/android/sdk/ui/floating/c$5;
.super Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;
.source "WidgetControlHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/floating/c;->a(Landroid/app/Activity;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/naver/glink/android/sdk/ui/floating/c;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/floating/c;Landroid/app/Activity;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/floating/c$5;->c:Lcom/naver/glink/android/sdk/ui/floating/c;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/ui/floating/c$5;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/naver/glink/android/sdk/ui/floating/c$5;->b:Ljava/util/List;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/floating/c$5;->a:Landroid/app/Activity;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/c$5;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/floating/c$5;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/16 v2, 0x1f90

    invoke-static {v1, v0, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method
