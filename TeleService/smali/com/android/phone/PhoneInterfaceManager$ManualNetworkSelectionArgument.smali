.class final Lcom/android/phone/PhoneInterfaceManager$ManualNetworkSelectionArgument;
.super Ljava/lang/Object;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ManualNetworkSelectionArgument"
.end annotation


# instance fields
.field public operatorInfo:Lcom/android/internal/telephony/OperatorInfo;

.field public persistSelection:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/OperatorInfo;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$ManualNetworkSelectionArgument;->operatorInfo:Lcom/android/internal/telephony/OperatorInfo;

    iput-boolean p2, p0, Lcom/android/phone/PhoneInterfaceManager$ManualNetworkSelectionArgument;->persistSelection:Z

    return-void
.end method
