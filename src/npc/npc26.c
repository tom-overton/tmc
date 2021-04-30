#include "global.h"
#include "entity.h"
#include "functions.h"
#include "script.h"

static void (*const gUnk_081106D4[])(Entity*);
static void (*const gUnk_081106E0[])(Entity*);

void NPC26(Entity* this) {
    if ((this->flags & 2) != 0) {
        gUnk_081106E0[this->action](this);
    } else {
        gUnk_081106D4[this->action](this);
        sub_0806ED78(this);
    }
}

static void sub_080669B8(Entity* this) {
    this->action = 1;
    this->spriteSettings.b.draw = 1;
    InitAnimationForceUpdate(this, 2);
    sub_08078778(this);
}

static void sub_080669DC(Entity* this) {
    s32 sVar1;
    s32 sVar2;

    sVar1 = sub_0806ED9C(this, 0x28, 0x28);
    if (sVar1 < 0) {
        sVar1 = 2;
    } else {
        if (this->field_0xf == 0) {
            this->field_0xf = 0x10;
        } else {
            this->field_0xf = this->field_0xf - 1;
            sVar1 = this->animIndex;
        }
    }
    sVar2 = sub_0806F078(this, sVar1);
    if (sVar2 == 0) {
        UpdateAnimationSingleFrame(this);
    }
    if (this->interactType != 0) {
        this->action = 2;
        this->interactType = 0;
    }
}

static void sub_08066A30(Entity* this) {
    this->action = 1;
}

static void sub_08066A38(Entity* this) {
    this->action = 1;
    this->spriteSettings.b.draw = 1;
    sub_0807DD50(this);
}

static void sub_08066A50(Entity* this) {
    sub_0807DD94(this, NULL);
}

static void (*const gUnk_081106D4[])(Entity*) = { sub_080669B8, sub_080669DC, sub_08066A30 };

static void (*const gUnk_081106E0[])(Entity*) = { sub_08066A38, sub_08066A50 };