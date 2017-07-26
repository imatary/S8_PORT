.class public Lcom/naver/glink/android/sdk/api/Responses$MenusResponse;
.super Lcom/naver/glink/android/sdk/api/Response;
.source "Responses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/api/Responses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MenusResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naver/glink/android/sdk/api/Responses$MenusResponse$MetaData;
    }
.end annotation


# instance fields
.field public menus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/naver/glink/android/sdk/model/Menu;",
            ">;"
        }
    .end annotation
.end field

.field public metadata:Lcom/naver/glink/android/sdk/api/Responses$MenusResponse$MetaData;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/api/Response;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/api/Responses$MenusResponse;->menus:Ljava/util/List;

    new-instance v0, Lcom/naver/glink/android/sdk/api/Responses$MenusResponse$MetaData;

    invoke-direct {v0}, Lcom/naver/glink/android/sdk/api/Responses$MenusResponse$MetaData;-><init>()V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/api/Responses$MenusResponse;->metadata:Lcom/naver/glink/android/sdk/api/Responses$MenusResponse$MetaData;

    return-void
.end method
