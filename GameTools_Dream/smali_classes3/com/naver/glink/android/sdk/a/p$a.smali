.class Lcom/naver/glink/android/sdk/a/p$a;
.super Lcom/naver/glink/android/sdk/model/BaseModel;
.source "SpannableBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/a/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/lang/Object;

.field final b:I

.field final c:I


# direct methods
.method constructor <init>(Ljava/lang/Object;II)V
    .locals 0

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/model/BaseModel;-><init>()V

    iput-object p1, p0, Lcom/naver/glink/android/sdk/a/p$a;->a:Ljava/lang/Object;

    iput p2, p0, Lcom/naver/glink/android/sdk/a/p$a;->b:I

    iput p3, p0, Lcom/naver/glink/android/sdk/a/p$a;->c:I

    return-void
.end method
