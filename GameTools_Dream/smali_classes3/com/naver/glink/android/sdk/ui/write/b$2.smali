.class final Lcom/naver/glink/android/sdk/ui/write/b$2;
.super Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;
.source "PermissionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/write/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:I


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/write/b$2;->a:Landroid/content/Context;

    iput p2, p0, Lcom/naver/glink/android/sdk/ui/write/b$2;->b:I

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/b$2;->a:Landroid/content/Context;

    iget v1, p0, Lcom/naver/glink/android/sdk/ui/write/b$2;->b:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/naver/glink/android/sdk/ui/write/b;->a(Landroid/content/Context;I[Ljava/lang/String;)V

    return-void
.end method

.method public b(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;->b(Landroid/content/DialogInterface;I)V

    return-void
.end method
