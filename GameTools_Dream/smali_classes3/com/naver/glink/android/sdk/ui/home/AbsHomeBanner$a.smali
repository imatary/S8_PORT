.class public Lcom/naver/glink/android/sdk/ui/home/AbsHomeBanner$a;
.super Ljava/lang/Object;
.source "AbsHomeBanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/ui/home/AbsHomeBanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/naver/glink/android/sdk/api/Responses$HomeResponse$HomeBanner;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/api/Responses$HomeResponse$HomeBanner;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/home/AbsHomeBanner$a;->a:Lcom/naver/glink/android/sdk/api/Responses$HomeResponse$HomeBanner;

    return-void
.end method
