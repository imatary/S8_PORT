.class public Lcom/naver/glink/android/sdk/api/Responses$HomeResponse;
.super Lcom/naver/glink/android/sdk/api/Response;
.source "Responses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/api/Responses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HomeResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naver/glink/android/sdk/api/Responses$HomeResponse$HomeBanner;
    }
.end annotation


# static fields
.field public static final BANNERS_LAYOUT_FOR_PORTRAIT:I = 0x67

.field public static final FULL_BANNERS_LAYOUT:I = 0x1

.field public static final FULL_BANNERS_LAYOUT_FOR_PORTRAIT:I = 0x65

.field public static final MAIN_AND_BANNERS_LAYOUT:I = 0x2

.field public static final MAIN_AND_BANNERS_LAYOUT_FOR_PORTRAIT:I = 0x66


# instance fields
.field public banners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/naver/glink/android/sdk/api/Responses$HomeResponse$HomeBanner;",
            ">;"
        }
    .end annotation
.end field

.field public layout:I

.field public mains:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/naver/glink/android/sdk/api/Responses$HomeResponse$HomeBanner;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/api/Response;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/api/Responses$HomeResponse;->mains:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/api/Responses$HomeResponse;->banners:Ljava/util/List;

    return-void
.end method
