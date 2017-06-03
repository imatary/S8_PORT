.class public Landroid/icu/text/BidiClassifier;
.super Ljava/lang/Object;
.source "BidiClassifier.java"


# instance fields
.field protected context:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/icu/text/BidiClassifier;->context:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public classify(I)I
    .locals 1

    const/16 v0, 0x17

    return v0
.end method

.method public getContext()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/BidiClassifier;->context:Ljava/lang/Object;

    return-object v0
.end method

.method public setContext(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Landroid/icu/text/BidiClassifier;->context:Ljava/lang/Object;

    return-void
.end method
