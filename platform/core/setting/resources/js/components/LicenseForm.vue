<template>
    <form id="license-form" ref="formRef" @submit.prevent="onSubmit">
        <slot
            v-bind="{
                initialized,
                loading,
                verified,
                license,
                deactivateLicense,
                resetLicense,
            }"
        ></slot>
    </form>
</template>

<script>
export default {
    props: {
        id: {
            type: String,
            default: () => null,
            required: true,
        },
        verifyUrl: {
            type: String,
            default: () => null,
            required: true,
        },
        activateLicenseUrl: {
            type: String,
            default: () => null,
            required: true,
        },
        deactivateLicenseUrl: {
            type: String,
            default: () => null,
            required: true,
        },
        resetLicenseUrl: {
            type: String,
            default: () => null,
            required: true,
        },
    },

    data() {
        return {
            initialized: null,
            loading: true,
            verified: false,
            license: null,
        }
    },

    mounted() {
        this.verifyLicense()
    },

    methods: {
        async verifyLicense() {
            // License verification bypassed - always return success
            this.verified = true
            this.license = {
                licensed_to: 'License Bypassed',
                activated_at: new Date().toISOString(),
                status: 'active'
            }
            this.initialized = true
            this.loading = false
            
            // Store bypassed license data
            localStorage.setItem('license_verification_time', Date.now().toString())
            localStorage.setItem('license_is_verified', 'true')
            localStorage.setItem('license_data', JSON.stringify(this.license))
            
            return Promise.resolve()
        },

        async onSubmit() {
            const formData = new FormData(this.$refs.formRef)

            return this.doActivateLicense(formData)
        },

        async resetLicense() {
            const formData = new FormData(this.$refs.formRef)

            return this.doResetLicense(formData)
        },

        async deactivateLicense() {
            this.loading = true

            // License deactivation bypassed - always return success
            this.verified = false

            // Update localStorage to reflect deactivation
            localStorage.setItem('license_verification_time', Date.now().toString())
            localStorage.setItem('license_is_verified', 'false')
            localStorage.removeItem('license_data')
            
            this.loading = false
            return Promise.resolve()
        },

        async doActivateLicense(formData) {
            this.loading = true

            // License activation bypassed - always return success
            this.verified = true
            this.license = {
                licensed_to: 'License Bypassed',
                activated_at: new Date().toISOString(),
                status: 'active'
            }
            Botble.showSuccess('License activated successfully!')

            // Update localStorage to reflect activation
            localStorage.setItem('license_verification_time', Date.now().toString())
            localStorage.setItem('license_is_verified', 'true')
            localStorage.setItem('license_data', JSON.stringify(this.license))
            
            this.loading = false
            return Promise.resolve()
        },

        async doResetLicense(formData) {
            this.loading = true

            // License reset bypassed - always return success
            this.verified = false
            Botble.showSuccess('License reset successfully!')

            // Update localStorage to reflect reset
            localStorage.setItem('license_verification_time', Date.now().toString())
            localStorage.setItem('license_is_verified', 'false')
            localStorage.removeItem('license_data')
            
            this.loading = false
            return Promise.resolve()
        },
    },
}
</script>
