.class public Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/EventDetails;
.super Ljava/lang/Object;
.source "EventDetails.java"


# instance fields
.field protected DATE:Ljava/lang/String;

.field protected Data14:Ljava/lang/String;

.field protected Data15:Ljava/lang/String;

.field protected TYPE:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/EventDetails;->TYPE:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/EventDetails;->DATE:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public setData14(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/EventDetails;->Data14:Ljava/lang/String;

    return-void
.end method

.method public setData15(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/EventDetails;->Data15:Ljava/lang/String;

    return-void
.end method
