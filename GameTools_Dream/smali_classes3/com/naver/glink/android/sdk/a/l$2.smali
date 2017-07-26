.class final Lcom/naver/glink/android/sdk/a/l$2;
.super Lcom/naver/glink/android/sdk/a/l$b;
.source "PrefUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/a/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/a/l$b;-><init>(I)V

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "pref_closed_notice_ids"

    invoke-static {v0}, Lcom/naver/glink/android/sdk/a/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
