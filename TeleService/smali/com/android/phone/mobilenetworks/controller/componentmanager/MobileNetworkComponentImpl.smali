.class abstract Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentImpl;
.super Ljava/lang/Object;
.source "MobileNetworkComponentImpl.java"

# interfaces
.implements Lcom/android/phone/mobilenetworks/controller/componentmanager/IMobileNetworkComponents;


# instance fields
.field protected mComponentNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field protected mConnectivityManager:Landroid/net/ConnectivityManager;

.field protected mContext:Landroid/content/Context;

.field protected mMobileNetworkComponentManager:Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentManager;


# direct methods
.method constructor <init>(Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentManager;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v1, "MobileNetworkCompImpl"

    const-string/jumbo v2, "MobileNetworkComponentImpl: Created"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentImpl;->mMobileNetworkComponentManager:Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentManager;

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentImpl;->createComponentNames()[Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentImpl;->convertClassName([Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentImpl;->mComponentNames:Ljava/util/ArrayList;

    return-void
.end method

.method private convertClassName([Ljava/lang/Class;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v5, "MobileNetworkCompImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "convertClassName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    array-length v6, p1

    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v0, p1, v5

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v4, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    return-object v3
.end method


# virtual methods
.method public abstract canDisplay()Z
.end method

.method public abstract createComponentNames()[Ljava/lang/Class;
.end method

.method public abstract getType()I
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentImpl;->mComponentNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public abstract registerObserver()V
.end method
