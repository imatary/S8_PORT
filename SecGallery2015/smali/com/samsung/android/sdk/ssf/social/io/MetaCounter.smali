.class public Lcom/samsung/android/sdk/ssf/social/io/MetaCounter;
.super Ljava/lang/Object;
.source "MetaCounter.java"


# instance fields
.field protected meta_key:Ljava/lang/String;

.field protected only_once:Z

.field protected value:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setMetaKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/social/io/MetaCounter;->meta_key:Ljava/lang/String;

    return-void
.end method

.method public setOnlyOnce(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/ssf/social/io/MetaCounter;->only_once:Z

    return-void
.end method

.method public setValue(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/ssf/social/io/MetaCounter;->value:I

    return-void
.end method
