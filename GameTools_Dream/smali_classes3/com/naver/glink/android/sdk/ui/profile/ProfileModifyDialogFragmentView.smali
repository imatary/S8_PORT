.class public Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;
.super Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;
.source "ProfileModifyDialogFragmentView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$a;,
        Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$UPDATE_OPTION;
    }
.end annotation


# static fields
.field public static final a:I = 0x22a0

.field private static final b:I = 0x5de

.field private static c:[Ljava/lang/String;


# instance fields
.field private g:Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;

.field private h:Lcom/naver/glink/android/sdk/api/Responses$AttachAuthResponse;

.field private i:Landroid/view/View;

.field private j:Landroid/widget/EditText;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/view/View;

.field private m:Landroid/view/View;

.field private n:Landroid/view/View;

.field private o:Landroid/view/View;

.field private p:Landroid/widget/ImageView;

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Lcom/naver/glink/android/sdk/ui/profile/a;

.field private u:Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$a;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "photo"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "delete"

    aput-object v2, v0, v1

    sput-object v0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;Lcom/naver/glink/android/sdk/api/Responses$AttachAuthResponse;)Lcom/naver/glink/android/sdk/api/Responses$AttachAuthResponse;
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->h:Lcom/naver/glink/android/sdk/api/Responses$AttachAuthResponse;

    return-object p1
.end method

.method public static a(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$a;)Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->setArguments(Landroid/os/Bundle;)V

    iput-object p1, v1, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->g:Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;

    iput-object p2, v1, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->u:Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$a;

    return-object v1
.end method

.method private a(Landroid/net/Uri;)V
    .locals 4

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$4;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$4;-><init>(Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;)V

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Lcom/naver/glink/android/sdk/ui/write/a;->a(Landroid/content/Context;Landroid/net/Uri;Lcom/naver/glink/android/sdk/ui/write/a$a;IZ)V

    return-void
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->asBitmap()Lcom/bumptech/glide/BitmapTypeRequest;

    move-result-object v0

    sget v1, Lcom/naver/glink/android/sdk/R$drawable;->gl_img_personal_profile_none:I

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/BitmapTypeRequest;->placeholder(I)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/BitmapRequestBuilder;->centerCrop()Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    new-instance v1, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$9;

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->p:Landroid/widget/ImageView;

    invoke-direct {v1, p0, v2}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$9;-><init>(Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/BitmapRequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->r:Z

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->n:Landroid/view/View;

    iget-boolean v1, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->s:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    sget-object v0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$UPDATE_OPTION;->CHANGE_IMAGE:Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$UPDATE_OPTION;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$UPDATE_OPTION;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->r:Z

    return v0
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->s:Z

    return p1
.end method

.method static synthetic b(Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;)Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->g:Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;

    return-object v0
.end method

.method static synthetic b(Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->c(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->a()Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;

    move-result-object v0

    const-string/jumbo v1, "imagecrop"

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->a(Ljava/lang/String;)Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$5;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$5;-><init>(Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;)V

    invoke-static {v0, p1, v1}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;->a(Landroid/content/Context;Ljava/lang/String;Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView$a;)Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;

    move-result-object v0

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->a()Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->b()Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;

    move-result-object v1

    const-string/jumbo v2, "imagecrop"

    invoke-virtual {v1, v0, v2}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;->a(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;Ljava/lang/String;)Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;

    move-result-object v0

    const-string/jumbo v1, "imagecrop"

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;->a(Ljava/lang/String;)Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;->a()V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iput-object p2, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->w:Ljava/lang/String;

    sget-object v0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$UPDATE_OPTION;->CHANGE_IMAGE:Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$UPDATE_OPTION;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$UPDATE_OPTION;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->v:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$UPDATE_OPTION;->DELETE_IMAGE:Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$UPDATE_OPTION;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$UPDATE_OPTION;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->v:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$UPDATE_OPTION;->UNCHAGE_IMAGE:Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$UPDATE_OPTION;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$UPDATE_OPTION;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->v:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->v:Ljava/lang/String;

    sget-object v0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$UPDATE_OPTION;->UNCHAGE_IMAGE:Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$UPDATE_OPTION;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$UPDATE_OPTION;->getCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->w:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic b(Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->q:Z

    return p1
.end method

.method static synthetic c(Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;)Lcom/naver/glink/android/sdk/ui/profile/a;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->t:Lcom/naver/glink/android/sdk/ui/profile/a;

    return-object v0
.end method

.method static synthetic c(Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->d(Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->h:Lcom/naver/glink/android/sdk/api/Responses$AttachAuthResponse;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/naver/glink/android/sdk/api/requests/Requests;->attachAuthRequest()Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/api/request/Request;->showProgress(Z)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$6;

    invoke-direct {v2, p0, p1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$6;-><init>(Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/naver/glink/android/sdk/api/request/Request;->execute(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/request/RequestListener;)V

    :goto_1
    return-void

    :cond_0
    invoke-static {}, Lcom/naver/glink/android/sdk/api/requests/GRequests;->photoKeyRequest()Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->d(Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic d(Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->j:Landroid/widget/EditText;

    return-object v0
.end method

.method private d(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/naver/glink/android/sdk/R$string;->unable_load_images:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/naver/glink/android/sdk/c;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->h:Lcom/naver/glink/android/sdk/api/Responses$AttachAuthResponse;

    invoke-static {v1, v0}, Lcom/naver/glink/android/sdk/api/requests/Requests;->attachImageRequest(Lcom/naver/glink/android/sdk/api/Responses$AttachAuthResponse;Ljava/io/File;)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/naver/glink/android/sdk/api/request/Request;->showProgress(Z)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$7;

    invoke-direct {v2, p0, p1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$7;-><init>(Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/naver/glink/android/sdk/api/request/Request;->execute(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/request/RequestListener;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->h:Lcom/naver/glink/android/sdk/api/Responses$AttachAuthResponse;

    invoke-static {v1, v0}, Lcom/naver/glink/android/sdk/api/requests/GRequests;->attachImageRequest(Lcom/naver/glink/android/sdk/api/Responses$AttachAuthResponse;Ljava/io/File;)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/naver/glink/android/sdk/api/request/Request;->showProgress(Z)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$8;

    invoke-direct {v2, p0, p1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$8;-><init>(Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/naver/glink/android/sdk/api/request/Request;->execute(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/request/RequestListener;)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->v:Ljava/lang/String;

    return-object v0
.end method

.method private e()V
    .locals 2

    new-instance v0, Lcom/naver/glink/android/sdk/ui/profile/a;

    new-instance v1, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$17;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$17;-><init>(Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;)V

    invoke-direct {v0, v1}, Lcom/naver/glink/android/sdk/ui/profile/a;-><init>(Lcom/naver/glink/android/sdk/ui/profile/a$a;)V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->t:Lcom/naver/glink/android/sdk/ui/profile/a;

    return-void
.end method

.method static synthetic f(Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->w:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;)V
    .locals 0

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->i()V

    return-void
.end method

.method static synthetic h(Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;)V
    .locals 0

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->l()V

    return-void
.end method

.method static synthetic i(Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->n:Landroid/view/View;

    return-object v0
.end method

.method private i()V
    .locals 3

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/naver/glink/android/sdk/R$string;->logout_confirm_message:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$2;

    invoke-direct {v2, p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$2;-><init>(Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;)V

    invoke-static {v0, v1, v2}, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView;->a(Landroid/content/Context;Ljava/lang/String;Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;)V

    return-void
.end method

.method static synthetic j(Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->k:Landroid/widget/TextView;

    return-object v0
.end method

.method private l()V
    .locals 5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->c:[Ljava/lang/String;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "PROFILE_DIALOG_TAG"

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/naver/glink/android/sdk/R$string;->profile_string:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2, v1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private m()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/String;

    const-string/jumbo v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/write/b;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x5de

    new-array v2, v3, [Ljava/lang/String;

    const-string/jumbo v3, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/naver/glink/android/sdk/ui/write/b;->a(Landroid/content/Context;I[Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string/jumbo v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x22a0

    invoke-static {v1, v0, v2}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/activityresult/a;->a(Landroid/content/Context;Landroid/content/Intent;I)V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/naver/glink/android/sdk/c;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v3}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->setDialogVisible(Z)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    sget v0, Lcom/naver/glink/android/sdk/R$layout;->fragment_profile_modify:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->i:Landroid/view/View;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->i:Landroid/view/View;

    return-object v0
.end method

.method public a()V
    .locals 0

    invoke-super {p0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->a()V

    invoke-static {p0}, Lcom/naver/glink/android/sdk/a/a;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->a(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->setBackgroundColor(I)V

    return-void
.end method

.method public a(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->u:Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->u:Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$a;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->g:Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;

    iget-boolean v2, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->q:Z

    invoke-interface {v0, v1, v2}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$a;->a(Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/write/a;->a(Landroid/content/Context;)V

    invoke-super {p0, p1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->a(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v6, 0x46

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->g:Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->dismiss()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    :cond_1
    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->e()V

    iput-boolean v3, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->q:Z

    iput-boolean v2, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->s:Z

    const/4 v0, 0x0

    sget-object v4, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$UPDATE_OPTION;->UNCHAGE_IMAGE:Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$UPDATE_OPTION;

    invoke-virtual {v4}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$UPDATE_OPTION;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->i:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, v1, Landroid/graphics/Point;->x:I

    int-to-double v0, v0

    const-wide v4, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v0, v4

    :goto_1
    double-to-int v0, v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->i:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->i:Landroid/view/View;

    sget v1, Lcom/naver/glink/android/sdk/R$id;->valid_check_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->k:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->k:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/profile/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->i:Landroid/view/View;

    sget v1, Lcom/naver/glink/android/sdk/R$id;->nickname:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->j:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->j:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->g:Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;

    iget-object v1, v1, Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->g:Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;->nickname:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->j:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->j:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_2
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->j:Landroid/widget/EditText;

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/profile/a;->a()[Landroid/text/InputFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->j:Landroid/widget/EditText;

    new-instance v1, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$1;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$1;-><init>(Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->j:Landroid/widget/EditText;

    new-instance v1, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$10;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$10;-><init>(Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->i:Landroid/view/View;

    sget v1, Lcom/naver/glink/android/sdk/R$id;->nickname_deletion:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->l:Landroid/view/View;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->l:Landroid/view/View;

    new-instance v1, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$11;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$11;-><init>(Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->i:Landroid/view/View;

    sget v1, Lcom/naver/glink/android/sdk/R$id;->btn_close_modify:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->m:Landroid/view/View;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->m:Landroid/view/View;

    new-instance v1, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$12;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$12;-><init>(Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->i:Landroid/view/View;

    sget v1, Lcom/naver/glink/android/sdk/R$id;->btn_confirm:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->n:Landroid/view/View;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->n:Landroid/view/View;

    new-instance v1, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$13;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$13;-><init>(Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->c()Lcom/naver/glink/android/sdk/configure/d;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->n:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/configure/d;->f(Landroid/view/View;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->i:Landroid/view/View;

    sget v1, Lcom/naver/glink/android/sdk/R$id;->btn_logout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->o:Landroid/view/View;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->o:Landroid/view/View;

    new-instance v1, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$14;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$14;-><init>(Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->i:Landroid/view/View;

    sget v1, Lcom/naver/glink/android/sdk/R$id;->profile_image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->p:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->g:Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;

    iget-object v1, v1, Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;->profileImage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->asBitmap()Lcom/bumptech/glide/BitmapTypeRequest;

    move-result-object v0

    sget v1, Lcom/naver/glink/android/sdk/R$drawable;->gl_img_personal_profile_none:I

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/BitmapTypeRequest;->placeholder(I)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/BitmapRequestBuilder;->centerCrop()Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    new-instance v1, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$15;

    iget-object v4, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->p:Landroid/widget/ImageView;

    invoke-direct {v1, p0, v4}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$15;-><init>(Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/BitmapRequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->p:Landroid/widget/ImageView;

    new-instance v1, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$16;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$16;-><init>(Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->i:Landroid/view/View;

    sget v1, Lcom/naver/glink/android/sdk/R$id;->profile_image_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->i:Landroid/view/View;

    sget v4, Lcom/naver/glink/android/sdk/R$id;->profile_image_stroke:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->n()Lcom/naver/glink/android/sdk/configure/c;

    move-result-object v4

    iget-object v5, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->p:Landroid/widget/ImageView;

    invoke-virtual {v4, v5, v6, v6}, Lcom/naver/glink/android/sdk/configure/c;->a(Landroid/view/View;II)V

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->n()Lcom/naver/glink/android/sdk/configure/c;

    move-result-object v4

    invoke-virtual {v4, v0, v6, v6}, Lcom/naver/glink/android/sdk/configure/c;->a(Landroid/view/View;II)V

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->n()Lcom/naver/glink/android/sdk/configure/c;

    move-result-object v0

    invoke-virtual {v0, v1, v6, v6}, Lcom/naver/glink/android/sdk/configure/c;->a(Landroid/view/View;II)V

    sget-object v0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->c:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v4, Lcom/naver/glink/android/sdk/R$string;->photo_album:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    sget-object v0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->c:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v4, Lcom/naver/glink/android/sdk/R$string;->delete:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->t:Lcom/naver/glink/android/sdk/ui/profile/a;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->g:Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;

    iget-object v1, v1, Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;->nickname:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->r:Z

    if-nez v4, :cond_5

    :goto_2
    iget-object v4, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->g:Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/naver/glink/android/sdk/ui/profile/a;->a(Ljava/lang/String;ZZLcom/naver/glink/android/sdk/api/Responses$MemberResponse;Landroid/content/Context;)V

    :cond_3
    invoke-super {p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->a(Landroid/view/View;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_4
    invoke-static {}, Lcom/naver/glink/android/sdk/c;->n()Lcom/naver/glink/android/sdk/configure/c;

    move-result-object v0

    iget v0, v0, Lcom/naver/glink/android/sdk/configure/c;->g:I

    int-to-double v0, v0

    goto/16 :goto_1

    :cond_5
    move v2, v3

    goto :goto_2
.end method

.method protected a(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2

    const/4 v1, -0x2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v0, 0x11

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v0, 0x3f19999a    # 0.6f

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    const v0, 0x1030002

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v1, 0x1000402

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    or-int/lit8 v0, v0, 0x22

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    goto :goto_0
.end method

.method public a(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView$a;)V
    .locals 3
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    const/4 v2, 0x1

    iget-object v0, p1, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView$a;->a:Ljava/lang/String;

    const-string/jumbo v1, "PROFILE_DIALOG_TAG"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->c:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p1, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->m()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->c:[Ljava/lang/String;

    aget-object v0, v0, v2

    iget-object v1, p1, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->r:Z

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->n:Landroid/view/View;

    iget-boolean v1, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->s:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    const/4 v0, 0x0

    sget-object v1, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$UPDATE_OPTION;->DELETE_IMAGE:Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$UPDATE_OPTION;

    invoke-virtual {v1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$UPDATE_OPTION;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    sget v1, Lcom/naver/glink/android/sdk/R$drawable;->gl_img_personal_profile_none:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->asBitmap()Lcom/bumptech/glide/BitmapTypeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/BitmapTypeRequest;->centerCrop()Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    new-instance v1, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$3;

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->p:Landroid/widget/ImageView;

    invoke-direct {v1, p0, v2}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$3;-><init>(Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/BitmapRequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_0
.end method

.method public a(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/activityresult/a$a;)V
    .locals 5
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    const/4 v4, -0x1

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/naver/glink/android/sdk/c;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->setDialogVisible(Z)V

    :cond_0
    if-nez p1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p1, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/activityresult/a$a;->a:I

    iget v1, p1, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/activityresult/a$a;->b:I

    iget-object v2, p1, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/activityresult/a$a;->c:Landroid/content/Intent;

    if-ne v1, v4, :cond_1

    const/16 v3, 0x22a0

    if-ne v0, v3, :cond_1

    if-ne v1, v4, :cond_1

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->a(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public b()V
    .locals 0

    invoke-super {p0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->b()V

    invoke-static {p0}, Lcom/naver/glink/android/sdk/a/a;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public c()V
    .locals 3

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->j:Landroid/widget/EditText;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->j:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->j:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_0
.end method

.method public d_()V
    .locals 1

    invoke-super {p0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->d_()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->i:Landroid/view/View;

    return-void
.end method

.method public dismiss()V
    .locals 0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->c()V

    invoke-super {p0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->dismiss()V

    return-void
.end method
