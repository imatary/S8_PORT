.class public Lcom/android/phone/additionalservice/RegisterUSSD$USSDItem;
.super Ljava/lang/Object;
.source "RegisterUSSD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/additionalservice/RegisterUSSD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "USSDItem"
.end annotation


# instance fields
.field protected code:Ljava/lang/String;

.field protected id:I

.field protected name:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/phone/additionalservice/RegisterUSSD$USSDItem;->id:I

    iput-object p2, p0, Lcom/android/phone/additionalservice/RegisterUSSD$USSDItem;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/phone/additionalservice/RegisterUSSD$USSDItem;->code:Ljava/lang/String;

    return-void
.end method
