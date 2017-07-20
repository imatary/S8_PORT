.class final Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
.super Ljava/lang/Object;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MainThreadRequest"
.end annotation


# instance fields
.field public argument:Ljava/lang/Object;

.field public result:Ljava/lang/Object;

.field public subId:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Integer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->subId:Ljava/lang/Integer;

    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->subId:Ljava/lang/Integer;

    :cond_0
    return-void
.end method
