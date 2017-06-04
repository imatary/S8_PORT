.class public Lcom/samsung/android/sdk/ssf/social/io/MetaData;
.super Ljava/lang/Object;
.source "MetaData.java"


# instance fields
.field protected meta_key:Ljava/lang/String;

.field protected value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setMetaKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/social/io/MetaData;->meta_key:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/social/io/MetaData;->value:Ljava/lang/String;

    return-void
.end method
