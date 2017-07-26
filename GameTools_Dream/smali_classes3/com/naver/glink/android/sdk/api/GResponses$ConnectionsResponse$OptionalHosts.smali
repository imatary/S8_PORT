.class public Lcom/naver/glink/android/sdk/api/GResponses$ConnectionsResponse$OptionalHosts;
.super Ljava/lang/Object;
.source "GResponses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/api/GResponses$ConnectionsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OptionalHosts"
.end annotation


# instance fields
.field public finish_path:Ljava/lang/String;

.field private login:Ljava/lang/String;

.field private login_stg:Ljava/lang/String;

.field public video:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLogin()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/GResponses$ConnectionsResponse$OptionalHosts;->login_stg:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/GResponses$ConnectionsResponse$OptionalHosts;->login:Ljava/lang/String;

    goto :goto_0
.end method
