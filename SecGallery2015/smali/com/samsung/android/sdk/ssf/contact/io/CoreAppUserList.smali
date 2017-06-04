.class public Lcom/samsung/android/sdk/ssf/contact/io/CoreAppUserList;
.super Ljava/lang/Object;
.source "CoreAppUserList.java"


# instance fields
.field protected users:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/contact/io/CoreAppUserData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/CoreAppUserList;->users:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCoreAppUserData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/contact/io/CoreAppUserData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/CoreAppUserList;->users:Ljava/util/List;

    return-object v0
.end method
