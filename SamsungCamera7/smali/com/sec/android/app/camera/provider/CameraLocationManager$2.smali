.class Lcom/sec/android/app/camera/provider/CameraLocationManager$2;
.super Ljava/lang/Object;
.source "CameraLocationManager.java"

# interfaces
.implements Lcom/samsung/android/location/SemLocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/provider/CameraLocationManager;->startAddressRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/provider/CameraLocationManager;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/provider/CameraLocationManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager$2;->this$0:Lcom/sec/android/app/camera/provider/CameraLocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationAvailable([Landroid/location/Location;)V
    .locals 0

    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;Landroid/location/Address;)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager$2;->this$0:Lcom/sec/android/app/camera/provider/CameraLocationManager;

    const-string v1, ""

    # setter for: Lcom/sec/android/app/camera/provider/CameraLocationManager;->mAddressValue:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->access$102(Lcom/sec/android/app/camera/provider/CameraLocationManager;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager$2;->this$0:Lcom/sec/android/app/camera/provider/CameraLocationManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager$2;->this$0:Lcom/sec/android/app/camera/provider/CameraLocationManager;

    # getter for: Lcom/sec/android/app/camera/provider/CameraLocationManager;->mAddressValue:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->access$100(Lcom/sec/android/app/camera/provider/CameraLocationManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/sec/android/app/camera/provider/CameraLocationManager;->mAddressValue:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->access$102(Lcom/sec/android/app/camera/provider/CameraLocationManager;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager$2;->this$0:Lcom/sec/android/app/camera/provider/CameraLocationManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager$2;->this$0:Lcom/sec/android/app/camera/provider/CameraLocationManager;

    # getter for: Lcom/sec/android/app/camera/provider/CameraLocationManager;->mAddressValue:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->access$100(Lcom/sec/android/app/camera/provider/CameraLocationManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/sec/android/app/camera/provider/CameraLocationManager;->mAddressValue:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->access$102(Lcom/sec/android/app/camera/provider/CameraLocationManager;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager$2;->this$0:Lcom/sec/android/app/camera/provider/CameraLocationManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager$2;->this$0:Lcom/sec/android/app/camera/provider/CameraLocationManager;

    # getter for: Lcom/sec/android/app/camera/provider/CameraLocationManager;->mAddressValue:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->access$100(Lcom/sec/android/app/camera/provider/CameraLocationManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/sec/android/app/camera/provider/CameraLocationManager;->mAddressValue:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->access$102(Lcom/sec/android/app/camera/provider/CameraLocationManager;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager$2;->this$0:Lcom/sec/android/app/camera/provider/CameraLocationManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager$2;->this$0:Lcom/sec/android/app/camera/provider/CameraLocationManager;

    # getter for: Lcom/sec/android/app/camera/provider/CameraLocationManager;->mAddressValue:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->access$100(Lcom/sec/android/app/camera/provider/CameraLocationManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/sec/android/app/camera/provider/CameraLocationManager;->mAddressValue:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->access$102(Lcom/sec/android/app/camera/provider/CameraLocationManager;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager$2;->this$0:Lcom/sec/android/app/camera/provider/CameraLocationManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager$2;->this$0:Lcom/sec/android/app/camera/provider/CameraLocationManager;

    # getter for: Lcom/sec/android/app/camera/provider/CameraLocationManager;->mAddressValue:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->access$100(Lcom/sec/android/app/camera/provider/CameraLocationManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/location/Address;->getSubLocality()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/sec/android/app/camera/provider/CameraLocationManager;->mAddressValue:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->access$102(Lcom/sec/android/app/camera/provider/CameraLocationManager;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager$2;->this$0:Lcom/sec/android/app/camera/provider/CameraLocationManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager$2;->this$0:Lcom/sec/android/app/camera/provider/CameraLocationManager;

    # getter for: Lcom/sec/android/app/camera/provider/CameraLocationManager;->mAddressValue:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->access$100(Lcom/sec/android/app/camera/provider/CameraLocationManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/sec/android/app/camera/provider/CameraLocationManager;->mAddressValue:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->access$102(Lcom/sec/android/app/camera/provider/CameraLocationManager;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager$2;->this$0:Lcom/sec/android/app/camera/provider/CameraLocationManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager$2;->this$0:Lcom/sec/android/app/camera/provider/CameraLocationManager;

    # getter for: Lcom/sec/android/app/camera/provider/CameraLocationManager;->mAddressValue:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->access$100(Lcom/sec/android/app/camera/provider/CameraLocationManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/sec/android/app/camera/provider/CameraLocationManager;->mAddressValue:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->access$102(Lcom/sec/android/app/camera/provider/CameraLocationManager;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager$2;->this$0:Lcom/sec/android/app/camera/provider/CameraLocationManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager$2;->this$0:Lcom/sec/android/app/camera/provider/CameraLocationManager;

    # getter for: Lcom/sec/android/app/camera/provider/CameraLocationManager;->mAddressValue:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->access$100(Lcom/sec/android/app/camera/provider/CameraLocationManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/sec/android/app/camera/provider/CameraLocationManager;->mAddressValue:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->access$102(Lcom/sec/android/app/camera/provider/CameraLocationManager;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager$2;->this$0:Lcom/sec/android/app/camera/provider/CameraLocationManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager$2;->this$0:Lcom/sec/android/app/camera/provider/CameraLocationManager;

    # getter for: Lcom/sec/android/app/camera/provider/CameraLocationManager;->mAddressValue:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->access$100(Lcom/sec/android/app/camera/provider/CameraLocationManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/sec/android/app/camera/provider/CameraLocationManager;->mAddressValue:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->access$102(Lcom/sec/android/app/camera/provider/CameraLocationManager;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager$2;->this$0:Lcom/sec/android/app/camera/provider/CameraLocationManager;

    # setter for: Lcom/sec/android/app/camera/provider/CameraLocationManager;->mSLocation:Landroid/location/Location;
    invoke-static {v0, p1}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->access$202(Lcom/sec/android/app/camera/provider/CameraLocationManager;Landroid/location/Location;)Landroid/location/Location;

    :cond_1
    return-void
.end method
