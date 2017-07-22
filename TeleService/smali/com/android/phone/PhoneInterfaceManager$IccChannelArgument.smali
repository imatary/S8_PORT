.class final Lcom/android/phone/PhoneInterfaceManager$IccChannelArgument;
.super Ljava/lang/Object;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IccChannelArgument"
.end annotation


# instance fields
.field public AID:Ljava/lang/String;

.field public channel:I

.field public p2:B


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/phone/PhoneInterfaceManager$IccChannelArgument;->channel:I

    iput-object p2, p0, Lcom/android/phone/PhoneInterfaceManager$IccChannelArgument;->AID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/phone/PhoneInterfaceManager$IccChannelArgument;->channel:I

    iput-object p2, p0, Lcom/android/phone/PhoneInterfaceManager$IccChannelArgument;->AID:Ljava/lang/String;

    iput-byte p3, p0, Lcom/android/phone/PhoneInterfaceManager$IccChannelArgument;->p2:B

    return-void
.end method
