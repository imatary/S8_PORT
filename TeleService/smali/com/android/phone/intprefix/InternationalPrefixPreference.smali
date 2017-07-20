.class public Lcom/android/phone/intprefix/InternationalPrefixPreference;
.super Landroid/preference/Preference;
.source "InternationalPrefixPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/intprefix/InternationalPrefixPreference$OnInternationalPrefixPreferenceLongClickListener;
    }
.end annotation


# static fields
.field private static mCurrentChecked:Landroid/widget/CompoundButton;

.field private static mSelectedKey:Ljava/lang/String;


# instance fields
.field private isChanged:Z

.field private mComplete:Z

.field private mOnLongClickListener:Lcom/android/phone/intprefix/InternationalPrefixPreference$OnInternationalPrefixPreferenceLongClickListener;

.field private mProtectFromCheckedChange:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/intprefix/InternationalPrefixPreference;->mSelectedKey:Ljava/lang/String;

    sput-object v0, Lcom/android/phone/intprefix/InternationalPrefixPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/android/phone/intprefix/InternationalPrefixPreference;->mProtectFromCheckedChange:Z

    iput-boolean v0, p0, Lcom/android/phone/intprefix/InternationalPrefixPreference;->mComplete:Z

    iput-boolean v0, p0, Lcom/android/phone/intprefix/InternationalPrefixPreference;->isChanged:Z

    invoke-direct {p0}, Lcom/android/phone/intprefix/InternationalPrefixPreference;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    const v0, 0x7f040081

    invoke-virtual {p0, v0}, Lcom/android/phone/intprefix/InternationalPrefixPreference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f100187

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    instance-of v5, v4, Landroid/widget/RadioButton;

    if-eqz v5, :cond_1

    move-object v1, v4

    check-cast v1, Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/android/phone/intprefix/InternationalPrefixPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/phone/intprefix/InternationalPrefixPreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sput-object v1, Lcom/android/phone/intprefix/InternationalPrefixPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    invoke-virtual {p0}, Lcom/android/phone/intprefix/InternationalPrefixPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/phone/intprefix/InternationalPrefixPreference;->mSelectedKey:Ljava/lang/String;

    :cond_0
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/phone/intprefix/InternationalPrefixPreference;->mProtectFromCheckedChange:Z

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/phone/intprefix/InternationalPrefixPreference;->mProtectFromCheckedChange:Z

    :cond_1
    const v5, 0x7f100186

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    instance-of v5, v2, Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_2
    return-object v3
.end method

.method public isChanged()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/intprefix/InternationalPrefixPreference;->isChanged:Z

    return v0
.end method

.method public isChecked()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/phone/intprefix/InternationalPrefixPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/phone/intprefix/InternationalPrefixPreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isCompleted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/intprefix/InternationalPrefixPreference;->mComplete:Z

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string/jumbo v0, "InternationalPrefixPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/intprefix/InternationalPrefixPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/phone/intprefix/InternationalPrefixPreference;->mProtectFromCheckedChange:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_2

    sget-object v0, Lcom/android/phone/intprefix/InternationalPrefixPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/phone/intprefix/InternationalPrefixPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_1
    sput-object p1, Lcom/android/phone/intprefix/InternationalPrefixPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    invoke-virtual {p0}, Lcom/android/phone/intprefix/InternationalPrefixPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/intprefix/InternationalPrefixPreference;->mSelectedKey:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/android/phone/intprefix/InternationalPrefixPreference;->mComplete:Z

    sget-object v0, Lcom/android/phone/intprefix/InternationalPrefixPreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/phone/intprefix/InternationalPrefixPreference;->callChangeListener(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_2
    sput-object v3, Lcom/android/phone/intprefix/InternationalPrefixPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    sput-object v3, Lcom/android/phone/intprefix/InternationalPrefixPreference;->mSelectedKey:Ljava/lang/String;

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    const-string/jumbo v0, "InternationalPrefixPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onClick ID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/intprefix/InternationalPrefixPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mSelectedKey : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/phone/intprefix/InternationalPrefixPreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " isChecked() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/intprefix/InternationalPrefixPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f100186

    if-ne v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/intprefix/InternationalPrefixPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/intprefix/InternationalPrefixPreference;->mComplete:Z

    invoke-virtual {p0}, Lcom/android/phone/intprefix/InternationalPrefixPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/intprefix/InternationalPrefixPreference;->callChangeListener(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/phone/intprefix/InternationalPrefixPreference;->mOnLongClickListener:Lcom/android/phone/intprefix/InternationalPrefixPreference$OnInternationalPrefixPreferenceLongClickListener;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/intprefix/InternationalPrefixPreference;->mOnLongClickListener:Lcom/android/phone/intprefix/InternationalPrefixPreference$OnInternationalPrefixPreferenceLongClickListener;

    invoke-interface {v0, p0}, Lcom/android/phone/intprefix/InternationalPrefixPreference$OnInternationalPrefixPreferenceLongClickListener;->onPreferenceLongClick(Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public setChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/intprefix/InternationalPrefixPreference;->isChanged:Z

    return-void
.end method

.method public setChecked()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/phone/intprefix/InternationalPrefixPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/intprefix/InternationalPrefixPreference;->mSelectedKey:Ljava/lang/String;

    return-void
.end method

.method public setOnInternationalPrefixPreferenceLongClickListener(Lcom/android/phone/intprefix/InternationalPrefixPreference$OnInternationalPrefixPreferenceLongClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/intprefix/InternationalPrefixPreference;->mOnLongClickListener:Lcom/android/phone/intprefix/InternationalPrefixPreference$OnInternationalPrefixPreferenceLongClickListener;

    return-void
.end method
